SELECT
  "Google Ads" AS channel,
  gad.date AS date,
  gad.campaign_name AS campaign_name,
  gad.adgroup_name AS adgroup_name,
  gad.ad_name AS ad_name,
  gad.advertisingChannelType AS campaign_objective,
  gad.impressions AS impressions,
  gad.clicks AS clicks,
  gad.cost AS cost,
  gad.all_conversions AS conversions,
  gad.all_conversions_value AS revenue
FROM
  `bics-427517.pb_marketing_project.google_ads_sample_Google_Ads_Report_*` gad
UNION ALL
SELECT
  "Facebook" AS channel,
  fb.date,
  fb.campaign_name AS campaign_name,
  fb.adset_name AS adgroup_name,
  fb.ad_name AS ad_name,
  fb.objective AS campaign_objective,
  fb.impressions AS impressions,
  fb.clicks AS clicks,
  fb.spend AS cost,
  fb.actions_purchase AS conversions,
  fb.action_values_purchase AS revenue,
FROM
  `bics-427517.pb_marketing_project.fbook_ads_sample_Facebook_Ads_Report_*` fb
UNION ALL
SELECT
  "Linkedin Ads" AS channel,
  li.date,
  li.campaign_name AS campaign_name,
  li.campaigngroup_name AS adgroup_name,
  li.creative_name AS ad_name,
  li.objective AS campaign_objective,
  li.impressions AS impressions,
  li.clicks AS clicks,
  li.externalWebsiteConversions AS conversions,
  li.costInLocalCurrency AS cost,
  li.conversionValueInLocalCurrency AS revenue
FROM
  `bics-427517.pb_marketing_project.linkedin_ads_sample_Linkedin_Ads_Report_*` li
UNION ALL
SELECT
  "Microsoft Ads" AS channel,
  ms.timeperiod AS date,
  ms.campaignname AS campaign_name,
  ms.adgroupname AS adgroup_name,
  ms.adtitle AS ad_name,
  ms.campaigntype AS campaign_objective,
  ms.impressions AS impressions,
  ms.clicks AS clicks,
  ms.spend AS cost,
  ms.conversions AS conversions,
  ms.revenue AS revenue
FROM
  `bics-427517.pb_marketing_project.ms_ads_sample_Microsoft_Ads_Report_*` ms
UNION ALL
SELECT
  "Tiktok Ads" AS channel,
  tt.date,
  tt.campaign_name AS campaign_name,
  tt.adgroup_name AS adgroup_name,
  tt.ad_name AS ad_name,
  tt.objective AS campaign_objective,
  tt.impressions AS impressions,
  tt.clicks AS clicks,
  tt.spend AS cost,
  tt.conversion AS conversions,
  tt.total_purchase_value AS revenue
FROM
  `bics-427517.pb_marketing_project.tiktok_ads_sample_TikTok_Ads_Report_*` tt