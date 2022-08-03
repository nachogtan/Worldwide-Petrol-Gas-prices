# Worldwide Petrol/Gas prices


The purpose of this project is to clean, prepare, process and analyze data as I should if I were working as a Junior Data Analyst.
<br>First of all i would follow some steps to be sure that data is clean  and ready to be validated. Check its reliability, procedence, integrity and completness.
<br>After that, i am gone to determine if data is apropiated to further analysis or if collect more concise data is needed.

The dataset was uploaded in <a href="https://www.kaggle.com/datasets/zusmani/petrolgas-prices-worldwide">Kaggle</a> by <a href="https://www.kaggle.com/zusmani">Zeeshan-ul-hassan Usmani</a> under <a href="https://creativecommons.org/publicdomain/zero/1.0/">CC0: Public Domain</a>.
The autor collected data online from public sources using google. The main sties were IMF, World Bank and the United Nations. This dataset contains 2 (almost identical) CSV files but for the purpose of this "Case Study" we are going to use the Petrol Dataset June 23 2022 -- Version 2.csv file. The file compiles information about oil prices, barrels consumed per day, countries shares, price per liter, etc.
<br> In general we cannot consider this data ROCCC. 
<ul>
  <li>Not <b>R</b>eliable</li> We dont know for certain how data was collected.
  <li>It is somehow <b>O</b>riginal</li>
  <li>Not <b>C</b>omprehensive</li> There are some other socio-economic factors that could be looked at to understand the different prices between countries.
  <li>It is <b>C</b>urrent</li>
  <li>Not <b>C</b>ited</li> There's not link to sources and original datasets.
</ul>

### The data was first imported into Excel for quick inspection. After creating a new table in SQL Server, the file was loaded for further manipulation.
<b>.</b> The data cleaning process was quite simple and straightforward. There wasn't much to clean. Due to the small size of the dataset, a naked eye scan showed us what was needed.
<br>No duplicates, null values, or data structure issues were found. All column data types were checked and converted for proper numerical analysis. 
<br>
<br> Here's a quick look to the table structure.
<br>
<br>
<img src="https://user-images.githubusercontent.com/98779367/182617386-d5f80fd1-9b4a-4a9e-9433-2895b78cdfaa.jpg">
<br>
<br>
## Analysis
* Daily Oil Consumption Barrels
<br>
<img src="https://user-images.githubusercontent.com/98779367/182642952-a73ec016-22f1-4cc5-bd39-03db4f886bfa.png">

* The United States, China and India are among the most populous countries in the world and are the top 3 barrel consumers.
<br>
<br>
<img src="https://user-images.githubusercontent.com/98779367/182644782-7818f45a-53cd-4e1a-9cca-2f5be3002e0f.png">

* Once more The United States, China and india leads shares percentage held.
<br>
<br>
<img src="https://user-images.githubusercontent.com/98779367/182646916-b6cd5164-b4f0-44f8-b55f-a8972fb87542.png">

* Graph shows Yearly Gallons Per Capita.
<br>
<br>
<img src="https://user-images.githubusercontent.com/98779367/182648131-5079cf39-2708-4e14-993e-d9a62c42bc12.png">

* North Korean prices are by far the most expensive (70% more than Tonga).
<br>
<br>
<img src="https://user-images.githubusercontent.com/98779367/182653314-423e491c-34c7-4983-8c2b-a6e4cc4a8413.png">

* GDP per capita is displayed in USD dollars because it is the global market currency of choice.
<br>
<br>
<br>

### Conclusion:

Despite having an idea of world oil consumption by country, it would be necessary to have more information and a clear objective for a deeper analysis. Have socioeconomic, mining, etc. information. It would be of great help to further understand consumption levels.
Also analyzing the consumption and development of different electrical industries, such as the automotive industry, would allow us to try to predict the consumption of oil and its derivatives in the coming years.



