defmodule WorkdayTest do
  use ExUnit.Case
  doctest Workday

  test "Saturday is holiday" do
    assert Workday.holiday?(~D[2017-09-30])
  end

  test "Sunday is holiday" do
    assert Workday.holiday?(~D[2017-10-01])
  end

  test "new years eve is holiday" do
    assert Workday.holiday?(~D[2019-12-31])
  end

  test "x-mas is holiday" do
    assert Workday.holiday?(~D[2019-12-25])
  end

  test "monday is workday" do
    assert Workday.workday?(~D[2019-08-05])
  end

  test "next workday after Friday is Monday" do
    assert Workday.next_workday(~D[2019-08-02]) == ~D[2019-08-05]
  end

  test "next holiday after Monday is Saturday" do
    assert Workday.next_holiday(~D[2019-08-05]) == ~D[2019-08-10]
  end

  test "next holiday after Saturday is Sunday" do
    assert Workday.next_holiday(~D[2019-08-03]) == ~D[2019-08-04]
  end

  test "next workday after Easter is Tuesday" do
    assert Workday.next_workday(~D[2019-04-21]) == ~D[2019-04-23]
  end

  test "next holiday after Easter is Monday" do
    assert Workday.next_holiday(~D[2019-04-21]) == ~D[2019-04-22]
  end
end
