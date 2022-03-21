from datetime import datetime

import geopandas as gpd
import pandas as pd

def get_data():
    df = pd.read_csv("data/Waste_Collection___Diversion_Report__daily_.csv")
    df['Report Date'] = df['Report Date'].apply(lambda x: datetime.strptime(x, '%m/%d/%Y'))
    df['Load Time'] = df['Load Time'].apply(lambda x: datetime.strptime(x, '%m/%d/%Y %I:%M:%S %p'))
    df['Load Weight'] = df['Load Weight'].apply(lambda x: float(str(x).replace(',', '')))
    return df


def get_clean_data():
    df = pd.read_csv("/Users/darenasc/Dropbox/Business Intelligence/Proyectos/data_world_league/2022/data_world_league_2022/data/clean_waste_data.csv")
    df['date'] = df['date'].apply(lambda x: datetime.strptime(x, '%Y-%m-%d'))
    # transform to categorical
    df['month'] = df['month'].astype('category')
    df['wday'] = df['wday'].astype('category')
    df['Load.Type'] = df['Load.Type'].astype('category')
    df['Route.Type'] = df['Route.Type'].astype('category')
    df['Route.Number'] = df['Route.Number'].astype('category')
    df['Dropoff.Site'] = df['Dropoff.Site'].astype('category')
    return df


def get_routes():
    routes = gpd.read_file(open("data/Garbage Routes.geojson"))
    return routes


def get_polygon(gdf: gpd.GeoDataFrame, rt:str):
    return gdf[(gdf['garb_rt'] == rt) | (gdf['rt_old'] == rt)]['geometry'].iloc[0] 