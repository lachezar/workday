defmodule Workday do

  def default_country, do: Application.get_env(:workday, :default_country)

  def weekend?(date=%Date{}) do
    Date.day_of_week(date) >= 6
  end
  def weekend?(date=%DateTime{}) do
    DateTime.to_date(date) |> weekend?
  end

  def public_holiday?(date, country \\ default_country())
  def public_holiday?(date=%Date{}, country) do
    country_module = country |> to_string |> Macro.camelize  |> String.to_atom
    holidays_list = Module.concat(Workday, country_module).holidays
    MapSet.member?(holidays_list, date)
  end
  def public_holiday?(date=%DateTime{}, country) do
    DateTime.to_date(date) |> public_holiday?(country)
  end

  def holiday?(date, country \\ default_country()) do
    weekend?(date) || public_holiday?(date, country)
  end

  def workday?(date, country \\ default_country()) do
    !holiday?(date, country)
  end

  def next_workday(date, country \\ default_country())
  def next_workday(date=%Date{}, country) do
    next_date = Date.add(date, 1)
    case Date.day_of_week(next_date) do
      7 -> next_workday(next_date, country)
      6 -> next_workday(Date.add(next_date, 1), country)
      _ ->
        case public_holiday?(next_date, country) do
          true -> next_workday(next_date, country)
          false -> next_date
        end
    end
  end
  def next_workday(date=%DateTime{}, country) do
    DateTime.to_date(date) |> next_workday(country)
  end

  def next_holiday(date, country \\ default_country())
  def next_holiday(date=%Date{}, country) do
    next_date = Date.add(date, 1)
    cond do
      Date.day_of_week(next_date) >= 6 -> next_date
      true ->
        case public_holiday?(next_date, country) do
          true -> next_date
          false -> next_holiday(next_date, country)
        end
    end
  end
  def next_holiday(date=%DateTime{}, country) do
    DateTime.to_date(date) |> next_holiday(country)
  end
end
