# GA4 Funnel & Growth Analytics Dashboard

## Project Overview
This project demonstrates an end-to-end **Business Intelligence workflow** using **GA4 public e-commerce event data**, **BigQuery**, and **Power BI**.

The objective was to analyze **user behavior, funnel performance, and traffic quality** to identify key conversion bottlenecks and optimization opportunities.

---

##  Business Questions Answered
- Where do users drop off most in the conversion funnel?
- Which traffic sources bring high-quality vs high-volume users?
- How does user engagement impact funnel progression and conversion?
- Are conversion issues driven by traffic quality, device usage, or behavior?

---

##  Data & Tools Used
- **Data Source:** GA4 Public E-commerce Events Dataset (BigQuery)
- **Data Processing:** SQL (BigQuery)
- **Visualization & Modeling:** Power BI
- **Metrics:** Funnel conversion, drop-off %, engagement time, events per session

---

##  Data Modeling
- Event-level GA4 data was flattened and transformed into **session-level fact tables**
- A **star schema** was designed with:
  - Fact tables: sessions, events
  - Dimension tables: date, traffic source, device category
- DAX measures were used for reusable KPIs and funnel calculations

---

##  Dashboard Pages

### Executive Funnel Overview
- High-level funnel performance
- Drop-off analysis by funnel stage
- Key KPIs for leadership decision-making

### Traffic & Device Intelligence
- Traffic quality vs volume comparison
- Conversion and engagement analysis by traffic source
- Device-level performance comparison

###  Behavior & Engagement Deep Dive
- Engagement vs conversion relationship
- Funnel depth analysis by acquisition channel
- Time-based engagement and behavior trends

---

##  Key Insights
- The largest drop-off occurs between **Product View and Add-to-Cart**
- High-volume traffic sources underperform compared to lower-volume but higher-quality sources
- User engagement strongly correlates with deeper funnel progression and higher conversion
- Traffic quality is a bigger bottleneck than device usage

---

##  Notes & Limitations
- Revenue and AOV metrics were excluded due to limitations of the public GA4 dataset
- Analysis focuses on behavioral and funnel-based insights

---

##  Dashboard Preview
Screenshots of all dashboard pages are available in the `/screenshots` folder.

---

## 🙌 Author
**Vishal Rai**  
Aspiring Business / Data Analyst  
Skills: SQL | Power BI | GA4 | BigQuery | Data Modeling
