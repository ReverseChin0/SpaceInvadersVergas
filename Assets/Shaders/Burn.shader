// Shader created with Shader Forge v1.42 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Enhanced by Antoine Guillon / Arkham Development - http://www.arkham-development.com/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.42;sub:START;pass:START;ps:flbk:,iptp:1,cusa:True,bamd:0,cgin:,lico:0,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:True,tesm:0,olmd:1,culm:2,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:True,atwp:True,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:1873,x:36850,y:32882,varname:node_1873,prsc:2|custl-9409-OUT;n:type:ShaderForge.SFN_Set,id:3028,x:34934,y:33144,varname:MainGradient,prsc:2|IN-2957-G;n:type:ShaderForge.SFN_Tex2d,id:2957,x:34776,y:33103,ptovrint:False,ptlb:NoiseMap,ptin:_NoiseMap,varname:node_2957,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:93e92440690f3864b807f9140db2ab83,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Get,id:2730,x:35109,y:32899,varname:node_2730,prsc:2|IN-3028-OUT;n:type:ShaderForge.SFN_Slider,id:4364,x:34846,y:33485,ptovrint:False,ptlb:width,ptin:_width,varname:node_4364,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.1,max:1;n:type:ShaderForge.SFN_Slider,id:6048,x:34846,y:33702,ptovrint:False,ptlb:Height,ptin:_Height,varname:node_6048,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.297193,max:1;n:type:ShaderForge.SFN_Set,id:6414,x:35258,y:33433,varname:Width,prsc:2|IN-4364-OUT;n:type:ShaderForge.SFN_Set,id:7489,x:35225,y:33711,varname:Height,prsc:2|IN-6048-OUT;n:type:ShaderForge.SFN_Multiply,id:9377,x:35485,y:33477,varname:node_9377,prsc:2|A-4364-OUT,B-6824-OUT;n:type:ShaderForge.SFN_Vector1,id:6824,x:35201,y:33564,cmnt:Nomas pa sacar la mitad,varname:node_6824,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Set,id:4988,x:35659,y:33477,varname:Width_Half,prsc:2|IN-9377-OUT;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:4847,x:35607,y:33711,varname:node_4847,prsc:2|IN-6048-OUT,IMIN-9362-OUT,IMAX-5362-OUT,OMIN-4608-OUT,OMAX-3260-OUT;n:type:ShaderForge.SFN_Vector1,id:9362,x:35138,y:33785,varname:node_9362,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:5362,x:35138,y:33933,varname:node_5362,prsc:2,v1:1;n:type:ShaderForge.SFN_Get,id:954,x:35138,y:33863,varname:node_954,prsc:2|IN-4988-OUT;n:type:ShaderForge.SFN_Subtract,id:4608,x:35314,y:33785,varname:node_4608,prsc:2|A-9362-OUT,B-954-OUT;n:type:ShaderForge.SFN_Add,id:3260,x:35314,y:33933,varname:node_3260,prsc:2|A-954-OUT,B-5362-OUT;n:type:ShaderForge.SFN_Set,id:1629,x:35759,y:33711,varname:Height_Remap,prsc:2|IN-4847-OUT;n:type:ShaderForge.SFN_Get,id:2648,x:36240,y:33490,varname:node_2648,prsc:2|IN-7489-OUT;n:type:ShaderForge.SFN_Get,id:65,x:36240,y:33555,varname:node_65,prsc:2|IN-4988-OUT;n:type:ShaderForge.SFN_Add,id:393,x:36453,y:33420,varname:node_393,prsc:2|A-2648-OUT,B-65-OUT;n:type:ShaderForge.SFN_Subtract,id:127,x:36453,y:33611,varname:node_127,prsc:2|A-2648-OUT,B-65-OUT;n:type:ShaderForge.SFN_Set,id:5568,x:36599,y:33478,varname:Top,prsc:2|IN-393-OUT;n:type:ShaderForge.SFN_Set,id:1490,x:36599,y:33598,varname:Bottom,prsc:2|IN-127-OUT;n:type:ShaderForge.SFN_Get,id:7916,x:35122,y:32835,varname:node_7916,prsc:2|IN-5568-OUT;n:type:ShaderForge.SFN_Get,id:9055,x:35136,y:32974,varname:node_9055,prsc:2|IN-1490-OUT;n:type:ShaderForge.SFN_Vector1,id:5832,x:35309,y:32899,varname:node_5832,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:186,x:35462,y:32899,varname:node_186,prsc:2,v1:1;n:type:ShaderForge.SFN_If,id:8800,x:35374,y:32730,varname:node_8800,prsc:2|A-2730-OUT,B-7916-OUT,GT-5832-OUT,EQ-186-OUT,LT-186-OUT;n:type:ShaderForge.SFN_If,id:1549,x:35374,y:32959,varname:node_1549,prsc:2|A-2730-OUT,B-9055-OUT,GT-186-OUT,EQ-186-OUT,LT-5832-OUT;n:type:ShaderForge.SFN_Multiply,id:5119,x:35669,y:32889,varname:node_5119,prsc:2|A-8800-OUT,B-1549-OUT;n:type:ShaderForge.SFN_Set,id:8882,x:36156,y:32900,varname:WidthIntersection,prsc:2|IN-6149-OUT;n:type:ShaderForge.SFN_Get,id:6003,x:35321,y:33111,varname:node_6003,prsc:2|IN-3028-OUT;n:type:ShaderForge.SFN_Get,id:2315,x:35321,y:33175,varname:node_2315,prsc:2|IN-1490-OUT;n:type:ShaderForge.SFN_Get,id:931,x:35321,y:33236,varname:node_931,prsc:2|IN-5568-OUT;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:7392,x:35543,y:33139,varname:node_7392,prsc:2|IN-6003-OUT,IMIN-2315-OUT,IMAX-931-OUT,OMIN-7723-OUT,OMAX-8542-OUT;n:type:ShaderForge.SFN_Vector1,id:7723,x:35322,y:33286,varname:node_7723,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:8542,x:35322,y:33346,varname:node_8542,prsc:2,v1:1;n:type:ShaderForge.SFN_Clamp01,id:42,x:35716,y:33139,varname:node_42,prsc:2|IN-7392-OUT;n:type:ShaderForge.SFN_Set,id:4835,x:35875,y:33139,cmnt:Intersection Gradient,varname:IntersectionGradient,prsc:2|IN-42-OUT;n:type:ShaderForge.SFN_OneMinus,id:2335,x:35669,y:32764,varname:node_2335,prsc:2|IN-8800-OUT;n:type:ShaderForge.SFN_OneMinus,id:6198,x:35669,y:33012,varname:node_6198,prsc:2|IN-1549-OUT;n:type:ShaderForge.SFN_Set,id:7877,x:36329,y:32764,varname:TopSection,prsc:2|IN-4926-OUT;n:type:ShaderForge.SFN_Set,id:1144,x:36329,y:33009,varname:BottomSection,prsc:2|IN-5174-OUT;n:type:ShaderForge.SFN_Multiply,id:4926,x:35955,y:32643,varname:node_4926,prsc:2|A-2011-RGB,B-2335-OUT;n:type:ShaderForge.SFN_Multiply,id:6149,x:35955,y:32840,varname:node_6149,prsc:2|A-2052-OUT,B-5119-OUT;n:type:ShaderForge.SFN_Multiply,id:5174,x:35955,y:32992,varname:node_5174,prsc:2|A-7281-RGB,B-6198-OUT,C-8156-RGB;n:type:ShaderForge.SFN_Add,id:9409,x:36584,y:32901,varname:node_9409,prsc:2|A-4926-OUT,B-6149-OUT,C-5174-OUT;n:type:ShaderForge.SFN_Tex2d,id:7281,x:35678,y:32613,ptovrint:False,ptlb:burned,ptin:_burned,varname:node_7281,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:7199f06ebd01a2f4e8b9fb42a403c3eb,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Color,id:8156,x:36042,y:33170,ptovrint:False,ptlb:black,ptin:_black,varname:node_8156,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.1886792,c2:0.1886792,c3:0.1886792,c4:1;n:type:ShaderForge.SFN_Tex2d,id:2011,x:35678,y:32249,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:node_2011,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:7199f06ebd01a2f4e8b9fb42a403c3eb,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Color,id:7260,x:35304,y:32525,ptovrint:False,ptlb:BurningColor,ptin:_BurningColor,varname:node_7260,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.07291334,c3:0,c4:1;n:type:ShaderForge.SFN_Tex2d,id:9590,x:35304,y:32352,ptovrint:False,ptlb:BurningTexture,ptin:_BurningTexture,varname:node_9590,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:43a3981f00d46274a9a44e2d1e514e76,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:2052,x:35678,y:32448,varname:node_2052,prsc:2|A-9590-RGB,B-7260-RGB;n:type:ShaderForge.SFN_NormalVector,id:9640,x:33661,y:32803,prsc:2,pt:False;n:type:ShaderForge.SFN_LightVector,id:3138,x:33661,y:32962,varname:node_3138,prsc:2;n:type:ShaderForge.SFN_Dot,id:8858,x:33921,y:32901,varname:node_8858,prsc:2,dt:1|A-9640-OUT,B-3138-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:9866,x:33661,y:33100,varname:node_9866,prsc:2;n:type:ShaderForge.SFN_Multiply,id:1105,x:34098,y:33051,varname:node_1105,prsc:2|A-8858-OUT,B-9866-OUT;n:type:ShaderForge.SFN_LightColor,id:9529,x:34098,y:33186,varname:node_9529,prsc:2;n:type:ShaderForge.SFN_Multiply,id:6765,x:34311,y:33095,varname:node_6765,prsc:2|A-1105-OUT,B-9529-RGB;n:type:ShaderForge.SFN_Set,id:3524,x:34486,y:33095,varname:LightData,prsc:2|IN-6765-OUT;proporder:2957-4364-6048-7281-8156-2011-7260-9590;pass:END;sub:END;*/

Shader "Shader Forge/Burn" {
    Properties {
        _NoiseMap ("NoiseMap", 2D) = "white" {}
        _width ("width", Range(0, 1)) = 0.1
        _Height ("Height", Range(0, 1)) = 0.297193
        _burned ("burned", 2D) = "white" {}
        _black ("black", Color) = (0.1886792,0.1886792,0.1886792,1)
        _MainTex ("MainTex", 2D) = "white" {}
        _BurningColor ("BurningColor", Color) = (1,0.07291334,0,1)
        _BurningTexture ("BurningTexture", 2D) = "white" {}
        [MaterialToggle] PixelSnap ("Pixel snap", Float) = 0
        _Stencil ("Stencil ID", Float) = 0
        _StencilReadMask ("Stencil Read Mask", Float) = 255
        _StencilWriteMask ("Stencil Write Mask", Float) = 255
        _StencilComp ("Stencil Comparison", Float) = 8
        _StencilOp ("Stencil Operation", Float) = 0
        _StencilOpFail ("Stencil Fail Operation", Float) = 0
        _StencilOpZFail ("Stencil Z-Fail Operation", Float) = 0
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
            "CanUseSpriteAtlas"="True"
            "PreviewType"="Plane"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Cull Off
            
            
            Stencil {
                Ref [_Stencil]
                ReadMask [_StencilReadMask]
                WriteMask [_StencilWriteMask]
                Comp [_StencilComp]
                Pass [_StencilOp]
                Fail [_StencilOpFail]
                ZFail [_StencilOpZFail]
            }
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #ifndef UNITY_PASS_FORWARDBASE
            #define UNITY_PASS_FORWARDBASE
            #endif //UNITY_PASS_FORWARDBASE
            #pragma multi_compile _ PIXELSNAP_ON
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal d3d11_9x xboxone ps4 psp2 n3ds wiiu switch vulkan 
            #pragma target 3.0
            uniform sampler2D _NoiseMap; uniform float4 _NoiseMap_ST;
            uniform float _width;
            uniform float _Height;
            uniform sampler2D _burned; uniform float4 _burned_ST;
            uniform float4 _black;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float4 _BurningColor;
            uniform sampler2D _BurningTexture; uniform float4 _BurningTexture_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos( v.vertex );
                #ifdef PIXELSNAP_ON
                    o.pos = UnityPixelSnap(o.pos);
                #endif
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
////// Lighting:
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float4 _NoiseMap_var = tex2D(_NoiseMap,TRANSFORM_TEX(i.uv0, _NoiseMap));
                float MainGradient = _NoiseMap_var.g;
                float node_2730 = MainGradient;
                float Height = _Height;
                float node_2648 = Height;
                float Width_Half = (_width*0.5);
                float node_65 = Width_Half;
                float Top = (node_2648+node_65);
                float node_8800_if_leA = step(node_2730,Top);
                float node_8800_if_leB = step(Top,node_2730);
                float node_186 = 1.0;
                float node_5832 = 0.0;
                float node_8800 = lerp((node_8800_if_leA*node_186)+(node_8800_if_leB*node_5832),node_186,node_8800_if_leA*node_8800_if_leB);
                float3 node_4926 = (_MainTex_var.rgb*(1.0 - node_8800));
                float4 _BurningTexture_var = tex2D(_BurningTexture,TRANSFORM_TEX(i.uv0, _BurningTexture));
                float Bottom = (node_2648-node_65);
                float node_1549_if_leA = step(node_2730,Bottom);
                float node_1549_if_leB = step(Bottom,node_2730);
                float node_1549 = lerp((node_1549_if_leA*node_5832)+(node_1549_if_leB*node_186),node_186,node_1549_if_leA*node_1549_if_leB);
                float3 node_6149 = ((_BurningTexture_var.rgb*_BurningColor.rgb)*(node_8800*node_1549));
                float4 _burned_var = tex2D(_burned,TRANSFORM_TEX(i.uv0, _burned));
                float3 node_5174 = (_burned_var.rgb*(1.0 - node_1549)*_black.rgb);
                float3 finalColor = (node_4926+node_6149+node_5174);
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
            #pragma multi_compile _ PIXELSNAP_ON
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
                #ifdef PIXELSNAP_ON
                    o.pos = UnityPixelSnap(o.pos);
                #endif
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
