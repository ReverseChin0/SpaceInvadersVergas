// Shader created with Shader Forge v1.42 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Enhanced by Antoine Guillon / Arkham Development - http://www.arkham-development.com/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.42;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:0,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:34792,y:32945,varname:node_3138,prsc:2|normal-7148-OUT,emission-7889-OUT,custl-6352-OUT;n:type:ShaderForge.SFN_Color,id:7983,x:32216,y:32623,ptovrint:False,ptlb:MainColor,ptin:_MainColor,varname:_MainColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:4996,x:32476,y:32742,varname:node_4996,prsc:2|A-7983-RGB,B-5898-RGB;n:type:ShaderForge.SFN_Tex2d,id:5898,x:32211,y:32880,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:31c5726367fe2b94b8cfba4bf0b0df47,ntxv:0,isnm:False|UVIN-800-OUT;n:type:ShaderForge.SFN_Set,id:7212,x:32708,y:32718,varname:DifusseColor,prsc:2|IN-4996-OUT;n:type:ShaderForge.SFN_Get,id:1379,x:33551,y:33350,varname:node_1379,prsc:2|IN-984-OUT;n:type:ShaderForge.SFN_NormalVector,id:7978,x:31355,y:33060,prsc:2,pt:True;n:type:ShaderForge.SFN_LightVector,id:1853,x:31355,y:33218,varname:node_1853,prsc:2;n:type:ShaderForge.SFN_Dot,id:7027,x:31618,y:33127,varname:node_7027,prsc:2,dt:1|A-7978-OUT,B-1853-OUT;n:type:ShaderForge.SFN_Multiply,id:8612,x:33921,y:33309,varname:node_8612,prsc:2|A-8365-OUT,B-1379-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:6821,x:31355,y:33359,varname:node_6821,prsc:2;n:type:ShaderForge.SFN_Multiply,id:5607,x:31871,y:33289,varname:node_5607,prsc:2|A-7027-OUT,B-6821-OUT;n:type:ShaderForge.SFN_Set,id:4549,x:32047,y:33099,varname:directlight,prsc:2|IN-7027-OUT;n:type:ShaderForge.SFN_LightColor,id:4292,x:31389,y:33559,varname:node_4292,prsc:2;n:type:ShaderForge.SFN_Set,id:9677,x:32122,y:33290,varname:ShadowData,prsc:2|IN-5607-OUT;n:type:ShaderForge.SFN_Get,id:324,x:31389,y:33486,varname:node_324,prsc:2|IN-9677-OUT;n:type:ShaderForge.SFN_Multiply,id:4959,x:31618,y:33511,varname:node_4959,prsc:2|A-324-OUT,B-4292-RGB;n:type:ShaderForge.SFN_Set,id:984,x:31823,y:33469,varname:DiffuseLight,prsc:2|IN-4959-OUT;n:type:ShaderForge.SFN_Get,id:8365,x:33706,y:33232,varname:node_8365,prsc:2|IN-7212-OUT;n:type:ShaderForge.SFN_AmbientLight,id:9759,x:33727,y:33100,varname:node_9759,prsc:2;n:type:ShaderForge.SFN_Multiply,id:7889,x:33910,y:33164,varname:node_7889,prsc:2|A-9759-RGB,B-8365-OUT;n:type:ShaderForge.SFN_NormalVector,id:896,x:32280,y:34101,prsc:2,pt:True;n:type:ShaderForge.SFN_LightVector,id:1801,x:32097,y:34004,varname:node_1801,prsc:2;n:type:ShaderForge.SFN_ViewVector,id:5968,x:32097,y:33886,varname:node_5968,prsc:2;n:type:ShaderForge.SFN_HalfVector,id:31,x:32280,y:33957,varname:node_31,prsc:2;n:type:ShaderForge.SFN_Dot,id:485,x:32487,y:34052,varname:node_485,prsc:2,dt:1|A-31-OUT,B-896-OUT;n:type:ShaderForge.SFN_Power,id:7060,x:32705,y:34062,varname:node_7060,prsc:2|VAL-485-OUT,EXP-6528-OUT;n:type:ShaderForge.SFN_Exp,id:6528,x:32705,y:34227,varname:node_6528,prsc:2,et:0|IN-6040-OUT;n:type:ShaderForge.SFN_Slider,id:6040,x:32548,y:34446,ptovrint:False,ptlb:SpecularPower,ptin:_SpecularPower,varname:_SpecularPower,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:2.350359,max:10;n:type:ShaderForge.SFN_Slider,id:5945,x:32641,y:33909,ptovrint:False,ptlb:SpecularIntensity,ptin:_SpecularIntensity,varname:_SpecularIntensity,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.4699019,max:2;n:type:ShaderForge.SFN_Multiply,id:2876,x:33044,y:34134,varname:node_2876,prsc:2|A-5945-OUT,B-7060-OUT,C-3117-OUT,D-5461-RGB;n:type:ShaderForge.SFN_Color,id:5461,x:33431,y:34477,ptovrint:False,ptlb:SpecularColor,ptin:_SpecularColor,varname:_SpecularColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Tex2d,id:9389,x:32840,y:34533,ptovrint:False,ptlb:SpecularMask,ptin:_SpecularMask,varname:_SpecularMask,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:dff0d35fed3e27749b06d396e5a1e94c,ntxv:0,isnm:False|UVIN-7485-OUT;n:type:ShaderForge.SFN_Desaturate,id:2350,x:33024,y:34533,varname:node_2350,prsc:2|COL-9389-RGB;n:type:ShaderForge.SFN_Set,id:963,x:33230,y:34145,varname:SpecularData,prsc:2|IN-2876-OUT;n:type:ShaderForge.SFN_Get,id:8245,x:33551,y:33459,varname:node_8245,prsc:2|IN-9677-OUT;n:type:ShaderForge.SFN_Get,id:9589,x:33832,y:33599,varname:node_9589,prsc:2|IN-963-OUT;n:type:ShaderForge.SFN_Multiply,id:4691,x:34102,y:33342,varname:node_4691,prsc:2|A-8245-OUT,B-9589-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:3117,x:33256,y:34659,ptovrint:False,ptlb:InvertSpecularMas,ptin:_InvertSpecularMas,varname:_InvertSpecularMas,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-2350-OUT,B-7400-OUT;n:type:ShaderForge.SFN_OneMinus,id:7400,x:33092,y:34762,varname:node_7400,prsc:2|IN-2350-OUT;n:type:ShaderForge.SFN_Tex2d,id:6403,x:33798,y:32732,ptovrint:False,ptlb:NormalMap,ptin:_NormalMap,varname:_NormalMap,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:60677ec466f5850439c494866da90c8b,ntxv:3,isnm:True|UVIN-5160-OUT;n:type:ShaderForge.SFN_Vector3,id:9930,x:33798,y:32897,varname:node_9930,prsc:2,v1:0,v2:0,v3:1;n:type:ShaderForge.SFN_Lerp,id:7148,x:34135,y:32801,varname:node_7148,prsc:2|A-6403-RGB,B-9930-OUT,T-1349-OUT;n:type:ShaderForge.SFN_Slider,id:1349,x:33923,y:32963,ptovrint:False,ptlb:normal_intensity,ptin:_normal_intensity,varname:_normal_intensity,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_NormalVector,id:8680,x:33926,y:34447,prsc:2,pt:True;n:type:ShaderForge.SFN_ViewVector,id:4216,x:34118,y:34624,varname:node_4216,prsc:2;n:type:ShaderForge.SFN_Dot,id:8415,x:34325,y:34545,varname:node_8415,prsc:2,dt:0|A-4546-OUT,B-4216-OUT;n:type:ShaderForge.SFN_OneMinus,id:4466,x:34476,y:34545,varname:node_4466,prsc:2|IN-8415-OUT;n:type:ShaderForge.SFN_Exp,id:929,x:34653,y:34727,varname:node_929,prsc:2,et:0|IN-7542-OUT;n:type:ShaderForge.SFN_Power,id:6900,x:34653,y:34567,varname:node_6900,prsc:2|VAL-4466-OUT,EXP-929-OUT;n:type:ShaderForge.SFN_Slider,id:7542,x:34325,y:34889,ptovrint:False,ptlb:RimPower,ptin:_RimPower,varname:_RimPower,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:2;n:type:ShaderForge.SFN_Color,id:4522,x:34842,y:34814,ptovrint:False,ptlb:RimColor,ptin:_RimColor,varname:_RimColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0.95,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:1716,x:34880,y:34567,varname:node_1716,prsc:2|A-6900-OUT,B-9458-OUT,C-7623-OUT;n:type:ShaderForge.SFN_Slider,id:7623,x:34587,y:34429,ptovrint:False,ptlb:RimIntensity,ptin:_RimIntensity,varname:_RimIntensity,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.7928895,max:2;n:type:ShaderForge.SFN_Set,id:9966,x:35054,y:34567,varname:RimData,prsc:2|IN-1716-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:9458,x:35075,y:34876,ptovrint:False,ptlb:RimLightColor,ptin:_RimLightColor,varname:_RimLightColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-4522-RGB,B-7764-RGB;n:type:ShaderForge.SFN_LightColor,id:7764,x:34842,y:34972,varname:node_7764,prsc:2;n:type:ShaderForge.SFN_Get,id:8640,x:33507,y:33680,varname:node_8640,prsc:2|IN-9966-OUT;n:type:ShaderForge.SFN_Get,id:1124,x:33507,y:33774,varname:node_1124,prsc:2|IN-9677-OUT;n:type:ShaderForge.SFN_Multiply,id:8836,x:33717,y:33738,varname:node_8836,prsc:2|A-8640-OUT,B-1124-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:4546,x:34118,y:34415,ptovrint:False,ptlb:usePerturbedNormal,ptin:_usePerturbedNormal,varname:_usePerturbedNormal,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-5287-OUT,B-8680-OUT;n:type:ShaderForge.SFN_NormalVector,id:5287,x:33926,y:34295,prsc:2,pt:False;n:type:ShaderForge.SFN_Fresnel,id:3442,x:34360,y:34718,cmnt:El fresnel hace lo mismo que el view dir dot one minus y power,varname:node_3442,prsc:2;n:type:ShaderForge.SFN_Slider,id:3822,x:34292,y:33999,ptovrint:False,ptlb:DarkseideLightsIntensity,ptin:_DarkseideLightsIntensity,varname:_DarkseideLightsIntensity,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:3,max:3;n:type:ShaderForge.SFN_Tex2d,id:3739,x:34179,y:33769,ptovrint:False,ptlb:LightnesOfTheDarkSide,ptin:_LightnesOfTheDarkSide,varname:_LightnesOfTheDarkSide,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:7f25c295617667b48baff65c4aa311be,ntxv:0,isnm:False|UVIN-6076-OUT;n:type:ShaderForge.SFN_Color,id:9258,x:34435,y:33815,ptovrint:False,ptlb:DarSideColorLights,ptin:_DarSideColorLights,varname:_DarSideColorLights,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.7058824,c3:0,c4:1;n:type:ShaderForge.SFN_Add,id:1012,x:34440,y:33309,varname:node_1012,prsc:2|A-8612-OUT,B-4691-OUT,C-8836-OUT,D-5788-OUT;n:type:ShaderForge.SFN_OneMinus,id:3695,x:34435,y:33633,varname:node_3695,prsc:2|IN-881-OUT;n:type:ShaderForge.SFN_Multiply,id:5788,x:34708,y:33718,varname:node_5788,prsc:2|A-3695-OUT,B-3739-RGB,C-9258-RGB,D-3822-OUT;n:type:ShaderForge.SFN_Get,id:881,x:34202,y:33633,varname:node_881,prsc:2|IN-9677-OUT;n:type:ShaderForge.SFN_Lerp,id:6352,x:35961,y:32875,varname:node_6352,prsc:2|A-9346-OUT,B-3723-RGB,T-2455-OUT;n:type:ShaderForge.SFN_Color,id:3723,x:35619,y:32895,ptovrint:False,ptlb:CloudsColor,ptin:_CloudsColor,varname:_ColorB,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.8773585,c2:0.8773585,c3:0.8773585,c4:1;n:type:ShaderForge.SFN_Tex2dAsset,id:5813,x:35945,y:33751,ptovrint:False,ptlb:CausticsTex,ptin:_CausticsTex,varname:_CausticsTex,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:c11b3668cbc41134aac6051ed1f283e8,ntxv:0,isnm:False;n:type:ShaderForge.SFN_TexCoord,id:5106,x:35226,y:33085,varname:node_5106,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Tex2d,id:7044,x:35990,y:33318,varname:_node_7484,prsc:2,tex:c11b3668cbc41134aac6051ed1f283e8,ntxv:0,isnm:False|UVIN-4279-UVOUT,TEX-5813-TEX;n:type:ShaderForge.SFN_Time,id:3807,x:35226,y:33221,varname:node_3807,prsc:2;n:type:ShaderForge.SFN_Slider,id:7448,x:35106,y:33416,ptovrint:False,ptlb:CloudSpeed,ptin:_CloudSpeed,varname:_Speed,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-0.3,cur:0.1,max:0.3;n:type:ShaderForge.SFN_Multiply,id:1898,x:35418,y:33325,varname:node_1898,prsc:2|A-3807-T,B-7448-OUT;n:type:ShaderForge.SFN_Panner,id:4279,x:35629,y:33250,varname:node_4279,prsc:2,spu:1,spv:0|UVIN-5106-UVOUT,DIST-1898-OUT;n:type:ShaderForge.SFN_Clamp01,id:3867,x:35961,y:33058,varname:node_3867,prsc:2|IN-7044-RGB;n:type:ShaderForge.SFN_Set,id:6534,x:34595,y:33309,varname:MainMapColor,prsc:2|IN-1012-OUT;n:type:ShaderForge.SFN_Get,id:9346,x:35508,y:32766,varname:node_9346,prsc:2|IN-6534-OUT;n:type:ShaderForge.SFN_Slider,id:8975,x:35097,y:33672,ptovrint:False,ptlb:EarthSpeed,ptin:_EarthSpeed,varname:node_8975,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-0.5,cur:-0.01,max:0.5;n:type:ShaderForge.SFN_Multiply,id:1018,x:35442,y:33652,varname:node_1018,prsc:2|A-3807-T,B-8975-OUT;n:type:ShaderForge.SFN_Panner,id:4068,x:35606,y:33631,varname:node_4068,prsc:2,spu:1,spv:0|UVIN-5106-UVOUT,DIST-1018-OUT;n:type:ShaderForge.SFN_Set,id:4324,x:35780,y:33631,varname:PannerEarth,prsc:2|IN-4068-UVOUT;n:type:ShaderForge.SFN_Get,id:5160,x:33496,y:32751,varname:node_5160,prsc:2|IN-4324-OUT;n:type:ShaderForge.SFN_Get,id:800,x:31974,y:32927,varname:node_800,prsc:2|IN-4324-OUT;n:type:ShaderForge.SFN_Get,id:7485,x:32583,y:34553,varname:node_7485,prsc:2|IN-4324-OUT;n:type:ShaderForge.SFN_Get,id:6076,x:33777,y:33922,varname:node_6076,prsc:2|IN-4324-OUT;n:type:ShaderForge.SFN_Multiply,id:2455,x:36143,y:33065,varname:node_2455,prsc:2|A-3867-OUT,B-5132-OUT,C-7437-OUT;n:type:ShaderForge.SFN_Get,id:5132,x:35961,y:33172,varname:node_5132,prsc:2|IN-9677-OUT;n:type:ShaderForge.SFN_Slider,id:7437,x:36088,y:33239,ptovrint:False,ptlb:CloudIntensity,ptin:_CloudIntensity,varname:node_7437,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:2.5,max:10;proporder:7983-5898-6040-5945-5461-9389-3117-6403-1349-7542-4522-7623-9458-4546-3822-3739-9258-3723-5813-7448-8975-7437;pass:END;sub:END;*/

Shader "Shader Forge/PEV_01_CustomLight" {
    Properties {
        _MainColor ("MainColor", Color) = (1,1,1,1)
        _MainTex ("MainTex", 2D) = "white" {}
        _SpecularPower ("SpecularPower", Range(0, 10)) = 2.350359
        _SpecularIntensity ("SpecularIntensity", Range(0, 2)) = 0.4699019
        _SpecularColor ("SpecularColor", Color) = (1,1,1,1)
        _SpecularMask ("SpecularMask", 2D) = "white" {}
        [MaterialToggle] _InvertSpecularMas ("InvertSpecularMas", Float ) = 1
        _NormalMap ("NormalMap", 2D) = "bump" {}
        _normal_intensity ("normal_intensity", Range(0, 1)) = 1
        _RimPower ("RimPower", Range(0, 2)) = 1
        _RimColor ("RimColor", Color) = (0,0.95,1,1)
        _RimIntensity ("RimIntensity", Range(0, 2)) = 0.7928895
        [MaterialToggle] _RimLightColor ("RimLightColor", Float ) = 0
        [MaterialToggle] _usePerturbedNormal ("usePerturbedNormal", Float ) = 0
        _DarkseideLightsIntensity ("DarkseideLightsIntensity", Range(0, 3)) = 3
        _LightnesOfTheDarkSide ("LightnesOfTheDarkSide", 2D) = "white" {}
        _DarSideColorLights ("DarSideColorLights", Color) = (1,0.7058824,0,1)
        _CloudsColor ("CloudsColor", Color) = (0.8773585,0.8773585,0.8773585,1)
        _CausticsTex ("CausticsTex", 2D) = "white" {}
        _CloudSpeed ("CloudSpeed", Range(-0.3, 0.3)) = 0.1
        _EarthSpeed ("EarthSpeed", Range(-0.5, 0.5)) = -0.01
        _CloudIntensity ("CloudIntensity", Range(0, 10)) = 2.5
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Cull Off
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #ifndef UNITY_PASS_FORWARDBASE
            #define UNITY_PASS_FORWARDBASE
            #endif //UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal d3d11_9x xboxone ps4 psp2 n3ds wiiu switch vulkan 
            #pragma target 3.0
            uniform float4 _MainColor;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _SpecularPower;
            uniform float _SpecularIntensity;
            uniform float4 _SpecularColor;
            uniform sampler2D _SpecularMask; uniform float4 _SpecularMask_ST;
            uniform fixed _InvertSpecularMas;
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            uniform float _normal_intensity;
            uniform float _RimPower;
            uniform float4 _RimColor;
            uniform float _RimIntensity;
            uniform fixed _RimLightColor;
            uniform fixed _usePerturbedNormal;
            uniform float _DarkseideLightsIntensity;
            uniform sampler2D _LightnesOfTheDarkSide; uniform float4 _LightnesOfTheDarkSide_ST;
            uniform float4 _DarSideColorLights;
            uniform float4 _CloudsColor;
            uniform sampler2D _CausticsTex; uniform float4 _CausticsTex_ST;
            uniform float _CloudSpeed;
            uniform float _EarthSpeed;
            uniform float _CloudIntensity;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                UNITY_LIGHTING_COORDS(5,6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_LIGHTING(o, float2(0,0));
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 node_3807 = _Time;
                float2 PannerEarth = (i.uv0+(node_3807.g*_EarthSpeed)*float2(1,0));
                float2 node_5160 = PannerEarth;
                float3 _NormalMap_var = UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(node_5160, _NormalMap)));
                float3 normalLocal = lerp(_NormalMap_var.rgb,float3(0,0,1),_normal_intensity);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                UNITY_LIGHT_ATTENUATION(attenuation, i, i.posWorld.xyz);
////// Emissive:
                float2 node_800 = PannerEarth;
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_800, _MainTex));
                float3 DifusseColor = (_MainColor.rgb*_MainTex_var.rgb);
                float3 node_8365 = DifusseColor;
                float3 emissive = (UNITY_LIGHTMODEL_AMBIENT.rgb*node_8365);
                float node_7027 = max(0,dot(normalDirection,lightDirection));
                float ShadowData = (node_7027*attenuation);
                float3 DiffuseLight = (ShadowData*_LightColor0.rgb);
                float2 node_7485 = PannerEarth;
                float4 _SpecularMask_var = tex2D(_SpecularMask,TRANSFORM_TEX(node_7485, _SpecularMask));
                float node_2350 = dot(_SpecularMask_var.rgb,float3(0.3,0.59,0.11));
                float3 SpecularData = (_SpecularIntensity*pow(max(0,dot(halfDirection,normalDirection)),exp(_SpecularPower))*lerp( node_2350, (1.0 - node_2350), _InvertSpecularMas )*_SpecularColor.rgb);
                float3 RimData = (pow((1.0 - dot(lerp( i.normalDir, normalDirection, _usePerturbedNormal ),viewDirection)),exp(_RimPower))*lerp( _RimColor.rgb, _LightColor0.rgb, _RimLightColor )*_RimIntensity);
                float2 node_6076 = PannerEarth;
                float4 _LightnesOfTheDarkSide_var = tex2D(_LightnesOfTheDarkSide,TRANSFORM_TEX(node_6076, _LightnesOfTheDarkSide));
                float3 MainMapColor = ((node_8365*DiffuseLight)+(ShadowData*SpecularData)+(RimData*ShadowData)+((1.0 - ShadowData)*_LightnesOfTheDarkSide_var.rgb*_DarSideColorLights.rgb*_DarkseideLightsIntensity));
                float2 node_4279 = (i.uv0+(node_3807.g*_CloudSpeed)*float2(1,0));
                float4 _node_7484 = tex2D(_CausticsTex,TRANSFORM_TEX(node_4279, _CausticsTex));
                float3 finalColor = emissive + lerp(MainMapColor,_CloudsColor.rgb,(saturate(_node_7484.rgb)*ShadowData*_CloudIntensity));
                return fixed4(finalColor,1);
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #ifndef UNITY_PASS_SHADOWCASTER
            #define UNITY_PASS_SHADOWCASTER
            #endif //UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal d3d11_9x xboxone ps4 psp2 n3ds wiiu switch vulkan 
            #pragma target 3.0
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
