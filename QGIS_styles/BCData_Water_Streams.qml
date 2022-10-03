<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis hasScaleBasedVisibilityFlag="0" readOnly="0" version="3.12.2-București" styleCategories="AllStyleCategories" simplifyDrawingHints="1" simplifyMaxScale="1" simplifyDrawingTol="1" maxScale="0" simplifyAlgorithm="0" labelsEnabled="0" simplifyLocal="1" minScale="100000000">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <renderer-v2 forceraster="0" enableorderby="0" type="singleSymbol" symbollevels="0">
    <symbols>
      <symbol type="line" alpha="1" clip_to_extent="1" name="0" force_rhr="0">
        <layer enabled="1" pass="1" locked="0" class="SimpleLine">
          <prop v="square" k="capstyle"/>
          <prop v="5;2" k="customdash"/>
          <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
          <prop v="MM" k="customdash_unit"/>
          <prop v="0" k="draw_inside_polygon"/>
          <prop v="round" k="joinstyle"/>
          <prop v="31,120,180,255" k="line_color"/>
          <prop v="solid" k="line_style"/>
          <prop v="0.33" k="line_width"/>
          <prop v="MM" k="line_width_unit"/>
          <prop v="0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="0" k="ring_filter"/>
          <prop v="0" k="use_custom_dash"/>
          <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
    <rotation/>
    <sizescale/>
  </renderer-v2>
  <customproperties>
    <property value="0" key="embeddedWidgets/count"/>
    <property key="variableNames"/>
    <property key="variableValues"/>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <SingleCategoryDiagramRenderer attributeLegend="1" diagramType="Histogram">
    <DiagramCategory penColor="#000000" diagramOrientation="Up" spacingUnit="MM" lineSizeType="MM" scaleBasedVisibility="0" backgroundColor="#ffffff" rotationOffset="270" labelPlacementMethod="XHeight" sizeScale="3x:0,0,0,0,0,0" maxScaleDenominator="1e+08" scaleDependency="Area" enabled="0" sizeType="MM" opacity="1" spacingUnitScale="3x:0,0,0,0,0,0" lineSizeScale="3x:0,0,0,0,0,0" barWidth="5" spacing="5" minScaleDenominator="0" direction="0" width="15" height="15" penWidth="0" showAxis="1" backgroundAlpha="255" penAlpha="255" minimumSize="0">
      <fontProperties style="" description="MS Shell Dlg 2,8,-1,5,50,0,0,0,0,0"/>
      <axisSymbol>
        <symbol type="line" alpha="1" clip_to_extent="1" name="" force_rhr="0">
          <layer enabled="1" pass="0" locked="0" class="SimpleLine">
            <prop v="square" k="capstyle"/>
            <prop v="5;2" k="customdash"/>
            <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
            <prop v="MM" k="customdash_unit"/>
            <prop v="0" k="draw_inside_polygon"/>
            <prop v="bevel" k="joinstyle"/>
            <prop v="35,35,35,255" k="line_color"/>
            <prop v="solid" k="line_style"/>
            <prop v="0.26" k="line_width"/>
            <prop v="MM" k="line_width_unit"/>
            <prop v="0" k="offset"/>
            <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
            <prop v="MM" k="offset_unit"/>
            <prop v="0" k="ring_filter"/>
            <prop v="0" k="use_custom_dash"/>
            <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
            <data_defined_properties>
              <Option type="Map">
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
            </data_defined_properties>
          </layer>
        </symbol>
      </axisSymbol>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings obstacle="0" zIndex="0" showAll="1" dist="0" linePlacementFlags="18" priority="0" placement="2">
    <properties>
      <Option type="Map">
        <Option value="" type="QString" name="name"/>
        <Option name="properties"/>
        <Option value="collection" type="QString" name="type"/>
      </Option>
    </properties>
  </DiagramLayerSettings>
  <geometryOptions geometryPrecision="0" removeDuplicateNodes="0">
    <activeChecks/>
    <checkConfiguration/>
  </geometryOptions>
  <referencedLayers/>
  <referencingLayers/>
  <fieldConfiguration>
    <field name="id">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="LINEAR_FEATURE_ID">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="WATERSHED_GROUP_ID">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="EDGE_TYPE">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="BLUE_LINE_KEY">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="WATERSHED_KEY">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="FWA_WATERSHED_CODE">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="LOCAL_WATERSHED_CODE">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="WATERSHED_GROUP_CODE">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="DOWNSTREAM_ROUTE_MEASURE">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="LENGTH_METRE">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="FEATURE_SOURCE">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="GNIS_ID">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="GNIS_NAME">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="LEFT_RIGHT_TRIBUTARY">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="STREAM_ORDER">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="STREAM_MAGNITUDE">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="WATERBODY_KEY">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="BLUE_LINE_KEY_50K">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="WATERSHED_CODE_50K">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="WATERSHED_KEY_50K">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="WATERSHED_GROUP_CODE_50K">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="GRADIENT">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="FEATURE_CODE">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="OBJECTID">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="SE_ANNO_CAD_DATA">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="FEATURE_LENGTH_M">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="X_leaflet_id">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="feature_type">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias index="0" field="id" name=""/>
    <alias index="1" field="LINEAR_FEATURE_ID" name=""/>
    <alias index="2" field="WATERSHED_GROUP_ID" name=""/>
    <alias index="3" field="EDGE_TYPE" name=""/>
    <alias index="4" field="BLUE_LINE_KEY" name=""/>
    <alias index="5" field="WATERSHED_KEY" name=""/>
    <alias index="6" field="FWA_WATERSHED_CODE" name=""/>
    <alias index="7" field="LOCAL_WATERSHED_CODE" name=""/>
    <alias index="8" field="WATERSHED_GROUP_CODE" name=""/>
    <alias index="9" field="DOWNSTREAM_ROUTE_MEASURE" name=""/>
    <alias index="10" field="LENGTH_METRE" name=""/>
    <alias index="11" field="FEATURE_SOURCE" name=""/>
    <alias index="12" field="GNIS_ID" name=""/>
    <alias index="13" field="GNIS_NAME" name=""/>
    <alias index="14" field="LEFT_RIGHT_TRIBUTARY" name=""/>
    <alias index="15" field="STREAM_ORDER" name=""/>
    <alias index="16" field="STREAM_MAGNITUDE" name=""/>
    <alias index="17" field="WATERBODY_KEY" name=""/>
    <alias index="18" field="BLUE_LINE_KEY_50K" name=""/>
    <alias index="19" field="WATERSHED_CODE_50K" name=""/>
    <alias index="20" field="WATERSHED_KEY_50K" name=""/>
    <alias index="21" field="WATERSHED_GROUP_CODE_50K" name=""/>
    <alias index="22" field="GRADIENT" name=""/>
    <alias index="23" field="FEATURE_CODE" name=""/>
    <alias index="24" field="OBJECTID" name=""/>
    <alias index="25" field="SE_ANNO_CAD_DATA" name=""/>
    <alias index="26" field="FEATURE_LENGTH_M" name=""/>
    <alias index="27" field="X_leaflet_id" name=""/>
    <alias index="28" field="feature_type" name=""/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default expression="" applyOnUpdate="0" field="id"/>
    <default expression="" applyOnUpdate="0" field="LINEAR_FEATURE_ID"/>
    <default expression="" applyOnUpdate="0" field="WATERSHED_GROUP_ID"/>
    <default expression="" applyOnUpdate="0" field="EDGE_TYPE"/>
    <default expression="" applyOnUpdate="0" field="BLUE_LINE_KEY"/>
    <default expression="" applyOnUpdate="0" field="WATERSHED_KEY"/>
    <default expression="" applyOnUpdate="0" field="FWA_WATERSHED_CODE"/>
    <default expression="" applyOnUpdate="0" field="LOCAL_WATERSHED_CODE"/>
    <default expression="" applyOnUpdate="0" field="WATERSHED_GROUP_CODE"/>
    <default expression="" applyOnUpdate="0" field="DOWNSTREAM_ROUTE_MEASURE"/>
    <default expression="" applyOnUpdate="0" field="LENGTH_METRE"/>
    <default expression="" applyOnUpdate="0" field="FEATURE_SOURCE"/>
    <default expression="" applyOnUpdate="0" field="GNIS_ID"/>
    <default expression="" applyOnUpdate="0" field="GNIS_NAME"/>
    <default expression="" applyOnUpdate="0" field="LEFT_RIGHT_TRIBUTARY"/>
    <default expression="" applyOnUpdate="0" field="STREAM_ORDER"/>
    <default expression="" applyOnUpdate="0" field="STREAM_MAGNITUDE"/>
    <default expression="" applyOnUpdate="0" field="WATERBODY_KEY"/>
    <default expression="" applyOnUpdate="0" field="BLUE_LINE_KEY_50K"/>
    <default expression="" applyOnUpdate="0" field="WATERSHED_CODE_50K"/>
    <default expression="" applyOnUpdate="0" field="WATERSHED_KEY_50K"/>
    <default expression="" applyOnUpdate="0" field="WATERSHED_GROUP_CODE_50K"/>
    <default expression="" applyOnUpdate="0" field="GRADIENT"/>
    <default expression="" applyOnUpdate="0" field="FEATURE_CODE"/>
    <default expression="" applyOnUpdate="0" field="OBJECTID"/>
    <default expression="" applyOnUpdate="0" field="SE_ANNO_CAD_DATA"/>
    <default expression="" applyOnUpdate="0" field="FEATURE_LENGTH_M"/>
    <default expression="" applyOnUpdate="0" field="X_leaflet_id"/>
    <default expression="" applyOnUpdate="0" field="feature_type"/>
  </defaults>
  <constraints>
    <constraint notnull_strength="0" unique_strength="0" constraints="0" field="id" exp_strength="0"/>
    <constraint notnull_strength="0" unique_strength="0" constraints="0" field="LINEAR_FEATURE_ID" exp_strength="0"/>
    <constraint notnull_strength="0" unique_strength="0" constraints="0" field="WATERSHED_GROUP_ID" exp_strength="0"/>
    <constraint notnull_strength="0" unique_strength="0" constraints="0" field="EDGE_TYPE" exp_strength="0"/>
    <constraint notnull_strength="0" unique_strength="0" constraints="0" field="BLUE_LINE_KEY" exp_strength="0"/>
    <constraint notnull_strength="0" unique_strength="0" constraints="0" field="WATERSHED_KEY" exp_strength="0"/>
    <constraint notnull_strength="0" unique_strength="0" constraints="0" field="FWA_WATERSHED_CODE" exp_strength="0"/>
    <constraint notnull_strength="0" unique_strength="0" constraints="0" field="LOCAL_WATERSHED_CODE" exp_strength="0"/>
    <constraint notnull_strength="0" unique_strength="0" constraints="0" field="WATERSHED_GROUP_CODE" exp_strength="0"/>
    <constraint notnull_strength="0" unique_strength="0" constraints="0" field="DOWNSTREAM_ROUTE_MEASURE" exp_strength="0"/>
    <constraint notnull_strength="0" unique_strength="0" constraints="0" field="LENGTH_METRE" exp_strength="0"/>
    <constraint notnull_strength="0" unique_strength="0" constraints="0" field="FEATURE_SOURCE" exp_strength="0"/>
    <constraint notnull_strength="0" unique_strength="0" constraints="0" field="GNIS_ID" exp_strength="0"/>
    <constraint notnull_strength="0" unique_strength="0" constraints="0" field="GNIS_NAME" exp_strength="0"/>
    <constraint notnull_strength="0" unique_strength="0" constraints="0" field="LEFT_RIGHT_TRIBUTARY" exp_strength="0"/>
    <constraint notnull_strength="0" unique_strength="0" constraints="0" field="STREAM_ORDER" exp_strength="0"/>
    <constraint notnull_strength="0" unique_strength="0" constraints="0" field="STREAM_MAGNITUDE" exp_strength="0"/>
    <constraint notnull_strength="0" unique_strength="0" constraints="0" field="WATERBODY_KEY" exp_strength="0"/>
    <constraint notnull_strength="0" unique_strength="0" constraints="0" field="BLUE_LINE_KEY_50K" exp_strength="0"/>
    <constraint notnull_strength="0" unique_strength="0" constraints="0" field="WATERSHED_CODE_50K" exp_strength="0"/>
    <constraint notnull_strength="0" unique_strength="0" constraints="0" field="WATERSHED_KEY_50K" exp_strength="0"/>
    <constraint notnull_strength="0" unique_strength="0" constraints="0" field="WATERSHED_GROUP_CODE_50K" exp_strength="0"/>
    <constraint notnull_strength="0" unique_strength="0" constraints="0" field="GRADIENT" exp_strength="0"/>
    <constraint notnull_strength="0" unique_strength="0" constraints="0" field="FEATURE_CODE" exp_strength="0"/>
    <constraint notnull_strength="0" unique_strength="0" constraints="0" field="OBJECTID" exp_strength="0"/>
    <constraint notnull_strength="0" unique_strength="0" constraints="0" field="SE_ANNO_CAD_DATA" exp_strength="0"/>
    <constraint notnull_strength="0" unique_strength="0" constraints="0" field="FEATURE_LENGTH_M" exp_strength="0"/>
    <constraint notnull_strength="0" unique_strength="0" constraints="0" field="X_leaflet_id" exp_strength="0"/>
    <constraint notnull_strength="0" unique_strength="0" constraints="0" field="feature_type" exp_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint desc="" field="id" exp=""/>
    <constraint desc="" field="LINEAR_FEATURE_ID" exp=""/>
    <constraint desc="" field="WATERSHED_GROUP_ID" exp=""/>
    <constraint desc="" field="EDGE_TYPE" exp=""/>
    <constraint desc="" field="BLUE_LINE_KEY" exp=""/>
    <constraint desc="" field="WATERSHED_KEY" exp=""/>
    <constraint desc="" field="FWA_WATERSHED_CODE" exp=""/>
    <constraint desc="" field="LOCAL_WATERSHED_CODE" exp=""/>
    <constraint desc="" field="WATERSHED_GROUP_CODE" exp=""/>
    <constraint desc="" field="DOWNSTREAM_ROUTE_MEASURE" exp=""/>
    <constraint desc="" field="LENGTH_METRE" exp=""/>
    <constraint desc="" field="FEATURE_SOURCE" exp=""/>
    <constraint desc="" field="GNIS_ID" exp=""/>
    <constraint desc="" field="GNIS_NAME" exp=""/>
    <constraint desc="" field="LEFT_RIGHT_TRIBUTARY" exp=""/>
    <constraint desc="" field="STREAM_ORDER" exp=""/>
    <constraint desc="" field="STREAM_MAGNITUDE" exp=""/>
    <constraint desc="" field="WATERBODY_KEY" exp=""/>
    <constraint desc="" field="BLUE_LINE_KEY_50K" exp=""/>
    <constraint desc="" field="WATERSHED_CODE_50K" exp=""/>
    <constraint desc="" field="WATERSHED_KEY_50K" exp=""/>
    <constraint desc="" field="WATERSHED_GROUP_CODE_50K" exp=""/>
    <constraint desc="" field="GRADIENT" exp=""/>
    <constraint desc="" field="FEATURE_CODE" exp=""/>
    <constraint desc="" field="OBJECTID" exp=""/>
    <constraint desc="" field="SE_ANNO_CAD_DATA" exp=""/>
    <constraint desc="" field="FEATURE_LENGTH_M" exp=""/>
    <constraint desc="" field="X_leaflet_id" exp=""/>
    <constraint desc="" field="feature_type" exp=""/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
  </attributeactions>
  <attributetableconfig actionWidgetStyle="dropDown" sortExpression="" sortOrder="0">
    <columns>
      <column width="-1" type="field" name="id" hidden="0"/>
      <column width="-1" type="field" name="LINEAR_FEATURE_ID" hidden="0"/>
      <column width="-1" type="field" name="WATERSHED_GROUP_ID" hidden="0"/>
      <column width="-1" type="field" name="EDGE_TYPE" hidden="0"/>
      <column width="-1" type="field" name="BLUE_LINE_KEY" hidden="0"/>
      <column width="-1" type="field" name="WATERSHED_KEY" hidden="0"/>
      <column width="-1" type="field" name="FWA_WATERSHED_CODE" hidden="0"/>
      <column width="-1" type="field" name="LOCAL_WATERSHED_CODE" hidden="0"/>
      <column width="-1" type="field" name="WATERSHED_GROUP_CODE" hidden="0"/>
      <column width="-1" type="field" name="DOWNSTREAM_ROUTE_MEASURE" hidden="0"/>
      <column width="-1" type="field" name="LENGTH_METRE" hidden="0"/>
      <column width="-1" type="field" name="FEATURE_SOURCE" hidden="0"/>
      <column width="-1" type="field" name="GNIS_ID" hidden="0"/>
      <column width="-1" type="field" name="GNIS_NAME" hidden="0"/>
      <column width="-1" type="field" name="LEFT_RIGHT_TRIBUTARY" hidden="0"/>
      <column width="-1" type="field" name="STREAM_ORDER" hidden="0"/>
      <column width="-1" type="field" name="STREAM_MAGNITUDE" hidden="0"/>
      <column width="-1" type="field" name="WATERBODY_KEY" hidden="0"/>
      <column width="-1" type="field" name="BLUE_LINE_KEY_50K" hidden="0"/>
      <column width="-1" type="field" name="WATERSHED_CODE_50K" hidden="0"/>
      <column width="-1" type="field" name="WATERSHED_KEY_50K" hidden="0"/>
      <column width="-1" type="field" name="WATERSHED_GROUP_CODE_50K" hidden="0"/>
      <column width="-1" type="field" name="GRADIENT" hidden="0"/>
      <column width="-1" type="field" name="FEATURE_CODE" hidden="0"/>
      <column width="-1" type="field" name="OBJECTID" hidden="0"/>
      <column width="-1" type="field" name="SE_ANNO_CAD_DATA" hidden="0"/>
      <column width="-1" type="field" name="FEATURE_LENGTH_M" hidden="0"/>
      <column width="-1" type="field" name="X_leaflet_id" hidden="0"/>
      <column width="-1" type="field" name="feature_type" hidden="0"/>
      <column width="-1" type="actions" hidden="1"/>
    </columns>
  </attributetableconfig>
  <conditionalstyles>
    <rowstyles/>
    <fieldstyles/>
  </conditionalstyles>
  <storedexpressions/>
  <editform tolerant="1"></editform>
  <editforminit/>
  <editforminitcodesource>0</editforminitcodesource>
  <editforminitfilepath></editforminitfilepath>
  <editforminitcode><![CDATA[# -*- coding: utf-8 -*-
"""
QGIS forms can have a Python function that is called when the form is
opened.

Use this function to add extra logic to your forms.

Enter the name of the function in the "Python Init function"
field.
An example follows:
"""
from qgis.PyQt.QtWidgets import QWidget

def my_form_open(dialog, layer, feature):
	geom = feature.geometry()
	control = dialog.findChild(QWidget, "MyLineEdit")
]]></editforminitcode>
  <featformsuppress>0</featformsuppress>
  <editorlayout>generatedlayout</editorlayout>
  <editable>
    <field editable="1" name="BLUE_LINE_KEY"/>
    <field editable="1" name="BLUE_LINE_KEY_50K"/>
    <field editable="1" name="DOWNSTREAM_ROUTE_MEASURE"/>
    <field editable="1" name="EDGE_TYPE"/>
    <field editable="1" name="FEATURE_CODE"/>
    <field editable="1" name="FEATURE_LENGTH_M"/>
    <field editable="1" name="FEATURE_SOURCE"/>
    <field editable="1" name="FWA_WATERSHED_CODE"/>
    <field editable="1" name="GNIS_ID"/>
    <field editable="1" name="GNIS_NAME"/>
    <field editable="1" name="GRADIENT"/>
    <field editable="1" name="LEFT_RIGHT_TRIBUTARY"/>
    <field editable="1" name="LENGTH_METRE"/>
    <field editable="1" name="LINEAR_FEATURE_ID"/>
    <field editable="1" name="LOCAL_WATERSHED_CODE"/>
    <field editable="1" name="OBJECTID"/>
    <field editable="1" name="SE_ANNO_CAD_DATA"/>
    <field editable="1" name="STREAM_MAGNITUDE"/>
    <field editable="1" name="STREAM_ORDER"/>
    <field editable="1" name="WATERBODY_KEY"/>
    <field editable="1" name="WATERSHED_CODE_50K"/>
    <field editable="1" name="WATERSHED_GROUP_CODE"/>
    <field editable="1" name="WATERSHED_GROUP_CODE_50K"/>
    <field editable="1" name="WATERSHED_GROUP_ID"/>
    <field editable="1" name="WATERSHED_KEY"/>
    <field editable="1" name="WATERSHED_KEY_50K"/>
    <field editable="1" name="X_leaflet_id"/>
    <field editable="1" name="feature_type"/>
    <field editable="1" name="id"/>
  </editable>
  <labelOnTop>
    <field labelOnTop="0" name="BLUE_LINE_KEY"/>
    <field labelOnTop="0" name="BLUE_LINE_KEY_50K"/>
    <field labelOnTop="0" name="DOWNSTREAM_ROUTE_MEASURE"/>
    <field labelOnTop="0" name="EDGE_TYPE"/>
    <field labelOnTop="0" name="FEATURE_CODE"/>
    <field labelOnTop="0" name="FEATURE_LENGTH_M"/>
    <field labelOnTop="0" name="FEATURE_SOURCE"/>
    <field labelOnTop="0" name="FWA_WATERSHED_CODE"/>
    <field labelOnTop="0" name="GNIS_ID"/>
    <field labelOnTop="0" name="GNIS_NAME"/>
    <field labelOnTop="0" name="GRADIENT"/>
    <field labelOnTop="0" name="LEFT_RIGHT_TRIBUTARY"/>
    <field labelOnTop="0" name="LENGTH_METRE"/>
    <field labelOnTop="0" name="LINEAR_FEATURE_ID"/>
    <field labelOnTop="0" name="LOCAL_WATERSHED_CODE"/>
    <field labelOnTop="0" name="OBJECTID"/>
    <field labelOnTop="0" name="SE_ANNO_CAD_DATA"/>
    <field labelOnTop="0" name="STREAM_MAGNITUDE"/>
    <field labelOnTop="0" name="STREAM_ORDER"/>
    <field labelOnTop="0" name="WATERBODY_KEY"/>
    <field labelOnTop="0" name="WATERSHED_CODE_50K"/>
    <field labelOnTop="0" name="WATERSHED_GROUP_CODE"/>
    <field labelOnTop="0" name="WATERSHED_GROUP_CODE_50K"/>
    <field labelOnTop="0" name="WATERSHED_GROUP_ID"/>
    <field labelOnTop="0" name="WATERSHED_KEY"/>
    <field labelOnTop="0" name="WATERSHED_KEY_50K"/>
    <field labelOnTop="0" name="X_leaflet_id"/>
    <field labelOnTop="0" name="feature_type"/>
    <field labelOnTop="0" name="id"/>
  </labelOnTop>
  <widgets/>
  <previewExpression>GNIS_NAME</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>1</layerGeometryType>
</qgis>
