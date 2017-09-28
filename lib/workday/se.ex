defmodule Workday.Se do

  @holidays MapSet.new([
    ~D[2017-01-01], ~D[2017-01-06], ~D[2017-04-14], ~D[2017-04-17], ~D[2017-05-01], ~D[2017-05-25], ~D[2017-06-06], ~D[2017-06-23], ~D[2017-06-24], ~D[2017-11-04], ~D[2017-12-24], ~D[2017-12-25], ~D[2017-12-26], ~D[2017-12-31],
    ~D[2018-01-01], ~D[2018-01-06], ~D[2018-03-30], ~D[2018-04-02], ~D[2018-05-01], ~D[2018-05-10], ~D[2018-06-06], ~D[2018-06-22], ~D[2018-06-23], ~D[2018-11-03], ~D[2018-12-24], ~D[2018-12-25], ~D[2018-12-26], ~D[2018-12-31],
    ~D[2019-01-01], ~D[2019-01-06], ~D[2019-04-19], ~D[2019-04-22], ~D[2019-05-01], ~D[2019-05-30], ~D[2019-06-06], ~D[2019-06-21], ~D[2019-06-22], ~D[2019-11-02], ~D[2019-12-24], ~D[2019-12-25], ~D[2019-12-26], ~D[2019-12-31],
    ~D[2020-01-01], ~D[2020-01-06], ~D[2020-04-10], ~D[2020-04-13], ~D[2020-05-01], ~D[2020-05-21], ~D[2020-06-06], ~D[2020-06-19], ~D[2020-06-20], ~D[2020-10-31], ~D[2020-12-24], ~D[2020-12-25], ~D[2020-12-26], ~D[2020-12-31],
    ~D[2021-01-01], ~D[2021-01-06], ~D[2021-04-02], ~D[2021-04-04], ~D[2021-05-01], ~D[2021-05-13], ~D[2021-06-06], ~D[2021-06-25], ~D[2021-06-26], ~D[2021-11-06], ~D[2021-12-24], ~D[2021-12-25], ~D[2021-12-26], ~D[2021-12-31],
    ~D[2022-01-01], ~D[2022-01-06], ~D[2022-04-15], ~D[2022-04-17], ~D[2022-05-01], ~D[2022-05-26], ~D[2022-06-06], ~D[2022-06-24], ~D[2022-06-25], ~D[2022-11-05], ~D[2022-12-24], ~D[2022-12-25], ~D[2022-12-26], ~D[2022-12-31],
    ~D[2023-01-01], ~D[2023-01-06], ~D[2023-04-07], ~D[2023-04-09], ~D[2023-05-01], ~D[2023-05-18], ~D[2023-06-06], ~D[2023-06-23], ~D[2023-06-24], ~D[2023-11-04], ~D[2023-12-24], ~D[2023-12-25], ~D[2023-12-26], ~D[2023-12-31],
    ~D[2024-01-01], ~D[2024-01-06], ~D[2024-03-29], ~D[2024-04-01], ~D[2024-05-01], ~D[2024-05-09], ~D[2024-06-06], ~D[2024-06-21], ~D[2024-06-22], ~D[2024-11-02], ~D[2024-12-24], ~D[2024-12-25], ~D[2024-12-26], ~D[2024-12-31]
  ])

  def holidays, do: @holidays
end