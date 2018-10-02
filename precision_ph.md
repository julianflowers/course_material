Precision public health
================
Julian Flowers
02/10/2018

## What is precision public health?

  - A recently coined term first appearing in print in 2014(Dolley 2018)
  - Sparse literature
  - Various definitions but all encompass a set of consistent ideas:
      - Use of *big data* and new tehcnology to improve health
      - Data used to give more precise descriptions of populations and
        individuals
      - Application of new techniques and methods
      - Speed, accuracy and scale
      - “improving the ability to prevent disease, promote health, and
        reduce health disparities in populations by applying emerging
        methods and technologies for measuring disease, pathogens,
        exposures, behaviors, and susceptibility in populations; and
        developing policies and targeted implementation programs to
        improve health” (Khoury and Galea 2016)
      - “requires robust primary surveillance data, rapid application of
        sophisticated analytics to track the geographical distribution
        of disease, and the capacity to act on such
        information”\[Dowell2016\]
      - “Precision public health is characterized by discovering,
        validating, and optimizing care strategies for
        well-characterized population strata”(Arnett and Claas 2016)

## Current and possible uses

Current literature has identified 4 main use cases for precision public
health:

1.  Disease surveillance and signal detection
2.  Risk prediction
3.  Targeting treatment interventions
4.  Improved disease understanding

![Source:(Dolley 2018)](fpubh-06-00068-t001.jpg)

These are largely in environmental health and communicable disease
control. The only studies identified by Dolley in non-communicable
disease or broader public health relate to diabetes.

![Source:(Dolley 2018)](fpubh-06-00068-t002.jpg)

## Precision ph vs precision medicine

There has been some debate about the relationship or otherwise between
precision medicince and precision public health. There are number of
strands:

1.  The 4 Ps of precision medicine (….) should be extended to 5 with the
    addition of P for “population”…
2.  Some argue that the two are unconnected
3.  Some argue that the precision medicine is the antihesis of precision
    medicine and that precision medicine may not improve health and may
    increase inequality, and will divert resources and focus away from
    population health and prevention

## Critiques and controversies

## Implications for health intelligence

In some ways these ideas are nothing new - our users and stakeholders
continually want more granularity and timeliness, more comprehensive
data and insight, and actionable data linked to intervention. We have
anlytical techniques like population segmentation, risk profiling and
geodemographics.

### Reference list for “precision public health”

``` r
source("../phds-article/trip_search.R")

prec_ph <- trip_searchR("precision+public+health")

trip_prec <- prec_ph %>% slice(1:20) %>% select(title, link, date)
```

| title                                                                                                                         | link                                                                 | date                          |
| :---------------------------------------------------------------------------------------------------------------------------- | :------------------------------------------------------------------- | :---------------------------- |
| Integrating Genomics into Public Health Surveillance: Ushering in a New Era of Precision Public Health                        | <https://blogs.cdc.gov/genomics/2017/07/19/integrating-genomics/>    | Wed, 19 Jul 2017 20:28:00 GMT |
| The Shift From Personalized Medicine to Precision Medicine and Precision Public Health: Words Matter\!                        | <http://blogs.cdc.gov/genomics/2016/04/21/shift/>                    | Thu, 21 Apr 2016 16:48:00 GMT |
| Precision Public Health: More Precision Ahead for Individual and Population Interventions                                     | <https://blogs.cdc.gov/genomics/2016/09/07/precision_public_health/> | Wed, 07 Sep 2016 20:16:00 GMT |
| The Shift From Personalized Medicine to Precision Medicine and Precision Public Health: Words Matter\!                        | <https://blogs.cdc.gov/genomics/2016/04/21/shift/>                   | Thu, 21 Apr 2016 16:48:00 GMT |
| Public Health is Striving Towards More Precision                                                                              | <https://blogs.cdc.gov/genomics/2018/09/17/public-health/>           | Mon, 17 Sep 2018 18:34:00 GMT |
| Public Health in the Precision-Medicine Era.                                                                                  | <http://www.ncbi.nlm.nih.gov/pubmed/26244305>                        | Thu, 06 Aug 2015 00:00:00 GMT |
| Precision Public Health: Harnessing the Power of the Human Microbiome                                                         | <https://blogs.cdc.gov/genomics/2017/06/07/precision-public-health/> | Wed, 07 Jun 2017 15:42:00 GMT |
| Precision Public Health and Precision Medicine: Two Peas in a Pod                                                             | <http://blogs.cdc.gov/genomics/2015/03/02/precision-public/>         | Mon, 02 Mar 2015 18:17:00 GMT |
| Precision Public Health: Reconciling Biological and Social Determinants of Health                                             | <http://blogs.cdc.gov/genomics/2016/06/15/precision-reconciling/>    | Wed, 15 Jun 2016 19:52:00 GMT |
| Precision Public Health: Reconciling Biological and Social Determinants of Health                                             | <https://blogs.cdc.gov/genomics/2016/06/15/precision-reconciling/>   | Wed, 15 Jun 2016 19:52:00 GMT |
| 2016: The Year of Precision Public Health\!                                                                                   | <https://blogs.cdc.gov/genomics/2016/12/14/2016/>                    | Wed, 14 Dec 2016 22:31:00 GMT |
| Precision medicine and genomics: an opportunity to improve public health?                                                     | <http://feeds.plos.org/~r/plos/blogs/main/~3/4rEm_DKQ28Q/>           | Mon, 31 Oct 2016 01:30:00 GMT |
| Precision Public Health: Using Malawi Population-Based Impact Assessment (MPHIA) Data to Reach HIV Epidemic Control in Malawi | <https://blogs.cdc.gov/global/2017/10/11/precision-public-health/>   | Wed, 11 Oct 2017 16:04:00 GMT |
| Precision Medicine and Public Health: Improving Health Now While Generating New Knowledge for the Future                      | <http://blogs.cdc.gov/genomics/2015/06/02/precision/>                | Tue, 02 Jun 2015 17:07:00 GMT |
| The Success of Precision Medicine Requires a Public Health Perspective                                                        | <http://blogs.cdc.gov/genomics/2015/01/29/precision-medicine/>       | Thu, 29 Jan 2015 17:08:00 GMT |
| Infectious Diseases: Precision Medicine for Public Health                                                                     | <http://blogs.cdc.gov/genomics/2015/09/24/infectious-diseases/>      | Thu, 24 Sep 2015 19:09:00 GMT |
| Precision Medicine vs. Public Health: a False Dichotomy?                                                                      | <http://blogs.cdc.gov/genomics/2015/09/28/precision-medicine-2/>     | Mon, 28 Sep 2015 15:59:00 GMT |
| Precision Medicine, Implementation Science and Public Health: How Do We Scale Up From 1 Million to 300 Million?               | <http://blogs.cdc.gov/genomics/2015/08/24/precision-2/>              | Mon, 24 Aug 2015 14:16:00 GMT |
| Genomics and Precision Medicine: How Can Emerging Technologies Address Population Health Disparities? Join the Conversation.  | <https://blogs.cdc.gov/genomics/2017/11/13/genomics-and-precision/>  | Mon, 13 Nov 2017 20:52:00 GMT |
| Precision Medicine and Population Health: Dealing With the Elephant in the Room                                               | <https://blogs.cdc.gov/genomics/2016/08/17/precision-medicine-3/>    | Wed, 17 Aug 2016 20:03:00 GMT |

## References

<div id="refs" class="references">

<div id="ref-Arnett2016">

Arnett, Donna K., and Steven A. Claas. 2016. “Precision medicine,
genomics, and public health.” *Diabetes Care*.
<https://doi.org/10.2337/dc16-1763>.

</div>

<div id="ref-Dolley2018">

Dolley, Shawn. 2018. “Big Data’s Role in Precision Public Health.”
*Frontiers in Public Health*.
<https://doi.org/10.3389/fpubh.2018.00068>.

</div>

<div id="ref-Khoury2016a">

Khoury, Muin J., and Sandro Galea. 2016. “Will Precision Medicine
Improve Population Health?” *JAMA*.
<https://doi.org/10.1001/jama.2016.12260>.

</div>

</div>
