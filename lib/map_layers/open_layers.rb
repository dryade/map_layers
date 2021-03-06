module MapLayers
  module OpenLayers
    # Javascriptify missing constant
    extend MapLayers::JsExtension::JsClassMissingConstWrapper

    OSM_MAPNIK = OpenLayers::Layer::OSM.new("OpenStreetMap")
    GOOGLE = OpenLayers::Layer::Google.new("Google Street", {:spherical_mercator => true})
    GOOGLE_SATELLITE = OpenLayers::Layer::Google.new("Google Satelite", {:spherical_mercator => true, :type => JsExtension::JsExpr.new('google.maps.MapTypeId.SATELLITE')})
    GOOGLE_HYBRID = OpenLayers::Layer::Google.new("Google Hybrid", {:spherical_mercator => true, :type => JsExtension::JsExpr.new('google.maps.MapTypeId.HYBRID')})
    GOOGLE_PHYSICAL = OpenLayers::Layer::Google.new("Google Physical", {:spherical_mercator => true, :type => JsExtension::JsExpr.new('google.maps.MapTypeId.TERRAIN')})

# TODO : add support for these layers
#    BING_ROAD = OpenLayers::Layer::Bing.new("Bing Road", {:name => 'Road', :type => 'Road'})
#    BING_AERIAL = OpenLayers::Layer::Bing.new("Bing Aerial", {:name => 'Aerial', :type => 'Aerial'})
#    BING_HYBRID = OpenLayers::Layer::Bing.new("Bing Hybrid", {:type => 'AerialWithLabels'})
#    YAHOO =  OpenLayers::Layer::Yahoo.new("Yahoo Street")
#    YAHOO_SATELLITE = OpenLayers::Layer::Yahoo.new("Yahoo Satelite", {:type => :YAHOO_MAP_SAT})
#    YAHOO_HYBRID = OpenLayers::Layer::Yahoo.new("Yahoo Hybrid", {:type => :YAHOO_MAP_HYB})
#    MULTIMAP = OpenLayers::Layer::MultiMap.new("MultiMap")
#    OSM_TELASCIENCE = OpenLayers::Layer::WMS.new("OpenStreetMap",
#      [
#        "http://t1.hypercube.telascience.org/tiles?",
#        "http://t2.hypercube.telascience.org/tiles?",
#        "http://t3.hypercube.telascience.org/tiles?",
#        "http://t4.hypercube.telascience.org/tiles?"
#      ],
#      {:layers => 'osm-4326', :format => 'image/png' } )
#    GEOPOLE_OSM = OpenLayers::Layer::TMS.new("Geopole Street Map",
#      "http://tms.geopole.org/",
#      {:layername => 'geopole_street', :type => 'png', :maxResolution => 0.703125,
#       :attribution => 'Map data <a href="http://creativecommons.org/licenses/by-sa/2.0/">CCBYSA</a> 2009 <a href="http://openstreetmap.org/">OpenStreetMap.org</a>'})
#    NASA_GLOBAL_MOSAIC = OpenLayers::Layer::WMS.new("NASA Global Mosaic",
#      [
#        "http://t1.hypercube.telascience.org/cgi-bin/landsat7",
#        "http://t2.hypercube.telascience.org/cgi-bin/landsat7",
#        "http://t3.hypercube.telascience.org/cgi-bin/landsat7",
#        "http://t4.hypercube.telascience.org/cgi-bin/landsat7"
#      ],
#      {:layers => 'landsat7'} )
#    BLUE_MARBLE_NG = OpenLayers::Layer::WMS.new("Blue Marble NG",
#      "http://wms.telascience.org/cgi-bin/ngBM_wms",
#      {:layers => 'world_topo_bathy'} )
#    METACARTA_VMAP0 = OpenLayers::Layer::WMS.new("OpenLayers WMS",
#      "http://labs.metacarta.com/wms/vmap0",
#      {:layers => 'basic'} )
#    WORLDWIND = OpenLayers::Layer::WorldWind.new("World Wind LANDSAT",
#      "http://worldwind25.arc.nasa.gov/tile/tile.aspx", 2.25, 4, {:T => "105"}, {:tileSize => OpenLayers::Size.new(512,512)})
#    WORLDWIND_URBAN = OpenLayers::Layer::WorldWind.new("World Wind Urban",
#      "http://worldwind25.arc.nasa.gov/tile/tile.aspx", 0.8, 9, {:T => "104"}, {:tileSize => OpenLayers::Size.new(512,512)})
#    WORLDWIND_BATHY = OpenLayers::Layer::WorldWind.new("World Wind Bathymetry",
#      "http://worldwind25.arc.nasa.gov/tile/tile.aspx", 36, 4, {:T => "bmng.topo.bathy.200406"}, {:tileSize => OpenLayers::Size.new(512,512)})
  end
end
