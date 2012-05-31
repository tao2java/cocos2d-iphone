/*
* AUTOGENERATED FILE. DO NOT EDIT IT
* Generated by ../../tools/js/generate_spidermonkey_bindings.py on 2012-05-31
*/

// needed for callbacks from objective-c to JS
#import <objc/runtime.h>
#import "JRSwizzle.h"

#import "jstypedarray.h"
#import "ScriptingCore.h"   

#import "js_bindings_CCDirector.h"
#import "js_bindings_cocos2d.h"


JSClass* JSPROXY_CCDirector_class = NULL;
JSObject* JSPROXY_CCDirector_object = NULL;
 // Constructor
JSBool JSPROXY_CCDirector_constructor(JSContext *cx, uint32_t argc, jsval *vp)
{
    JSObject *jsobj = JS_NewObject(cx, JSPROXY_CCDirector_class, JSPROXY_CCDirector_object, NULL);

    JSPROXY_CCDirector *proxy = [[JSPROXY_CCDirector alloc] initWithJSObject:jsobj];

    JS_SetPrivate(jsobj, proxy);
    JS_SET_RVAL(cx, vp, OBJECT_TO_JSVAL(jsobj));

    /* no callbacks */
    
    return JS_TRUE;
}

// Destructor
void JSPROXY_CCDirector_finalize(JSContext *cx, JSObject *obj)
{
	JSPROXY_CCDirector *pt = (JSPROXY_CCDirector*)JS_GetPrivate(obj);
	if (pt) {
		// id real = [pt realObj];
	
		/* no callbacks */

		[pt release];

		JS_free(cx, pt);
	}
}

// Arguments: 
// Ret value: NSTimeInterval
JSBool JSPROXY_CCDirector_animationInterval(JSContext *cx, uint32_t argc, jsval *vp) {

	JSObject* obj = (JSObject *)JS_THIS_OBJECT(cx, vp);
	JSPROXY_NSObject *proxy = (JSPROXY_NSObject*) JS_GetPrivate( obj );
	NSCAssert( proxy, @"Invalid Proxy object");
	NSCAssert( [proxy realObj], @"Object not initialzied. error");
	NSCAssert( argc == 0, @"Invalid number of arguments" );
	NSTimeInterval ret_val;

	CCDirector *real = (CCDirector*) [proxy realObj];
	ret_val = [real animationInterval ];
	JS_SET_RVAL(cx, vp, DOUBLE_TO_JSVAL(ret_val));
	return JS_TRUE;
}

// Arguments: CGPoint
// Ret value: CGPoint
JSBool JSPROXY_CCDirector_convertToGL_(JSContext *cx, uint32_t argc, jsval *vp) {

	JSObject* obj = (JSObject *)JS_THIS_OBJECT(cx, vp);
	JSPROXY_NSObject *proxy = (JSPROXY_NSObject*) JS_GetPrivate( obj );
	NSCAssert( proxy, @"Invalid Proxy object");
	NSCAssert( [proxy realObj], @"Object not initialzied. error");
	NSCAssert( argc == 1, @"Invalid number of arguments" );
	jsval *argvp = JS_ARGV(cx,vp);

	JSObject *tmp_arg0;
	JS_ValueToObject( cx, *argvp++, &tmp_arg0 );
	NSCAssert( JS_GetTypedArrayByteLength( tmp_arg0 ) == 8, @"Invalid length");
#ifdef __CC_PLATFORM_IOS
	CGPoint arg0 = *(CGPoint*)JS_GetTypedArrayData( tmp_arg0 );
#elif defined(__CC_PLATFORM_MAC)
	float* arg0_array = (float*)JS_GetTypedArrayData( tmp_arg0 );
	CGPoint arg0 = ccp(arg0_array[0], arg0_array[1] );
#else
#error Unsupported Platform
#endif  
	CGPoint ret_val;

	CCDirector *real = (CCDirector*) [proxy realObj];
	ret_val = [real convertToGL:(CGPoint)arg0  ];

	JSObject *typedArray = js_CreateTypedArray(cx, js::TypedArray::TYPE_FLOAT32, 2 );
	float *buffer = (float*)JS_GetTypedArrayData(typedArray);
	buffer[0] = ret_val.x;
	buffer[1] = ret_val.y;
	JS_SET_RVAL(cx, vp, OBJECT_TO_JSVAL(typedArray));

	return JS_TRUE;
}

// Arguments: CGPoint
// Ret value: CGPoint
JSBool JSPROXY_CCDirector_convertToUI_(JSContext *cx, uint32_t argc, jsval *vp) {

	JSObject* obj = (JSObject *)JS_THIS_OBJECT(cx, vp);
	JSPROXY_NSObject *proxy = (JSPROXY_NSObject*) JS_GetPrivate( obj );
	NSCAssert( proxy, @"Invalid Proxy object");
	NSCAssert( [proxy realObj], @"Object not initialzied. error");
	NSCAssert( argc == 1, @"Invalid number of arguments" );
	jsval *argvp = JS_ARGV(cx,vp);

	JSObject *tmp_arg0;
	JS_ValueToObject( cx, *argvp++, &tmp_arg0 );
	NSCAssert( JS_GetTypedArrayByteLength( tmp_arg0 ) == 8, @"Invalid length");
#ifdef __CC_PLATFORM_IOS
	CGPoint arg0 = *(CGPoint*)JS_GetTypedArrayData( tmp_arg0 );
#elif defined(__CC_PLATFORM_MAC)
	float* arg0_array = (float*)JS_GetTypedArrayData( tmp_arg0 );
	CGPoint arg0 = ccp(arg0_array[0], arg0_array[1] );
#else
#error Unsupported Platform
#endif  
	CGPoint ret_val;

	CCDirector *real = (CCDirector*) [proxy realObj];
	ret_val = [real convertToUI:(CGPoint)arg0  ];

	JSObject *typedArray = js_CreateTypedArray(cx, js::TypedArray::TYPE_FLOAT32, 2 );
	float *buffer = (float*)JS_GetTypedArrayData(typedArray);
	buffer[0] = ret_val.x;
	buffer[1] = ret_val.y;
	JS_SET_RVAL(cx, vp, OBJECT_TO_JSVAL(typedArray));

	return JS_TRUE;
}

// Arguments: 
// Ret value: None
JSBool JSPROXY_CCDirector_createStatsLabel(JSContext *cx, uint32_t argc, jsval *vp) {

	JSObject* obj = (JSObject *)JS_THIS_OBJECT(cx, vp);
	JSPROXY_NSObject *proxy = (JSPROXY_NSObject*) JS_GetPrivate( obj );
	NSCAssert( proxy, @"Invalid Proxy object");
	NSCAssert( [proxy realObj], @"Object not initialzied. error");
	NSCAssert( argc == 0, @"Invalid number of arguments" );

	CCDirector *real = (CCDirector*) [proxy realObj];
	[real createStatsLabel ];
	JS_SET_RVAL(cx, vp, JSVAL_TRUE);
	return JS_TRUE;
}

// Arguments: 
// Ret value: BOOL
JSBool JSPROXY_CCDirector_displayStats(JSContext *cx, uint32_t argc, jsval *vp) {

	JSObject* obj = (JSObject *)JS_THIS_OBJECT(cx, vp);
	JSPROXY_NSObject *proxy = (JSPROXY_NSObject*) JS_GetPrivate( obj );
	NSCAssert( proxy, @"Invalid Proxy object");
	NSCAssert( [proxy realObj], @"Object not initialzied. error");
	NSCAssert( argc == 0, @"Invalid number of arguments" );
	BOOL ret_val;

	CCDirector *real = (CCDirector*) [proxy realObj];
	ret_val = [real displayStats ];
	JS_SET_RVAL(cx, vp, BOOLEAN_TO_JSVAL(ret_val));
	return JS_TRUE;
}

// Arguments: 
// Ret value: None
JSBool JSPROXY_CCDirector_drawScene(JSContext *cx, uint32_t argc, jsval *vp) {

	JSObject* obj = (JSObject *)JS_THIS_OBJECT(cx, vp);
	JSPROXY_NSObject *proxy = (JSPROXY_NSObject*) JS_GetPrivate( obj );
	NSCAssert( proxy, @"Invalid Proxy object");
	NSCAssert( [proxy realObj], @"Object not initialzied. error");
	NSCAssert( argc == 0, @"Invalid number of arguments" );

	CCDirector *real = (CCDirector*) [proxy realObj];
	[real drawScene ];
	JS_SET_RVAL(cx, vp, JSVAL_TRUE);
	return JS_TRUE;
}

// Arguments: 
// Ret value: None
JSBool JSPROXY_CCDirector_end(JSContext *cx, uint32_t argc, jsval *vp) {

	JSObject* obj = (JSObject *)JS_THIS_OBJECT(cx, vp);
	JSPROXY_NSObject *proxy = (JSPROXY_NSObject*) JS_GetPrivate( obj );
	NSCAssert( proxy, @"Invalid Proxy object");
	NSCAssert( [proxy realObj], @"Object not initialzied. error");
	NSCAssert( argc == 0, @"Invalid number of arguments" );

	CCDirector *real = (CCDirector*) [proxy realObj];
	[real end ];
	JS_SET_RVAL(cx, vp, JSVAL_TRUE);
	return JS_TRUE;
}

// Arguments: 
// Ret value: float
JSBool JSPROXY_CCDirector_getZEye(JSContext *cx, uint32_t argc, jsval *vp) {

	JSObject* obj = (JSObject *)JS_THIS_OBJECT(cx, vp);
	JSPROXY_NSObject *proxy = (JSPROXY_NSObject*) JS_GetPrivate( obj );
	NSCAssert( proxy, @"Invalid Proxy object");
	NSCAssert( [proxy realObj], @"Object not initialzied. error");
	NSCAssert( argc == 0, @"Invalid number of arguments" );
	float ret_val;

	CCDirector *real = (CCDirector*) [proxy realObj];
	ret_val = [real getZEye ];
	JS_SET_RVAL(cx, vp, DOUBLE_TO_JSVAL(ret_val));
	return JS_TRUE;
}

// Arguments: 
// Ret value: BOOL
JSBool JSPROXY_CCDirector_isAnimating(JSContext *cx, uint32_t argc, jsval *vp) {

	JSObject* obj = (JSObject *)JS_THIS_OBJECT(cx, vp);
	JSPROXY_NSObject *proxy = (JSPROXY_NSObject*) JS_GetPrivate( obj );
	NSCAssert( proxy, @"Invalid Proxy object");
	NSCAssert( [proxy realObj], @"Object not initialzied. error");
	NSCAssert( argc == 0, @"Invalid number of arguments" );
	BOOL ret_val;

	CCDirector *real = (CCDirector*) [proxy realObj];
	ret_val = [real isAnimating ];
	JS_SET_RVAL(cx, vp, BOOLEAN_TO_JSVAL(ret_val));
	return JS_TRUE;
}

// Arguments: 
// Ret value: BOOL
JSBool JSPROXY_CCDirector_isPaused(JSContext *cx, uint32_t argc, jsval *vp) {

	JSObject* obj = (JSObject *)JS_THIS_OBJECT(cx, vp);
	JSPROXY_NSObject *proxy = (JSPROXY_NSObject*) JS_GetPrivate( obj );
	NSCAssert( proxy, @"Invalid Proxy object");
	NSCAssert( [proxy realObj], @"Object not initialzied. error");
	NSCAssert( argc == 0, @"Invalid number of arguments" );
	BOOL ret_val;

	CCDirector *real = (CCDirector*) [proxy realObj];
	ret_val = [real isPaused ];
	JS_SET_RVAL(cx, vp, BOOLEAN_TO_JSVAL(ret_val));
	return JS_TRUE;
}

// Arguments: 
// Ret value: BOOL
JSBool JSPROXY_CCDirector_nextDeltaTimeZero(JSContext *cx, uint32_t argc, jsval *vp) {

	JSObject* obj = (JSObject *)JS_THIS_OBJECT(cx, vp);
	JSPROXY_NSObject *proxy = (JSPROXY_NSObject*) JS_GetPrivate( obj );
	NSCAssert( proxy, @"Invalid Proxy object");
	NSCAssert( [proxy realObj], @"Object not initialzied. error");
	NSCAssert( argc == 0, @"Invalid number of arguments" );
	BOOL ret_val;

	CCDirector *real = (CCDirector*) [proxy realObj];
	ret_val = [real nextDeltaTimeZero ];
	JS_SET_RVAL(cx, vp, BOOLEAN_TO_JSVAL(ret_val));
	return JS_TRUE;
}

// Arguments: 
// Ret value: None
JSBool JSPROXY_CCDirector_pause(JSContext *cx, uint32_t argc, jsval *vp) {

	JSObject* obj = (JSObject *)JS_THIS_OBJECT(cx, vp);
	JSPROXY_NSObject *proxy = (JSPROXY_NSObject*) JS_GetPrivate( obj );
	NSCAssert( proxy, @"Invalid Proxy object");
	NSCAssert( [proxy realObj], @"Object not initialzied. error");
	NSCAssert( argc == 0, @"Invalid number of arguments" );

	CCDirector *real = (CCDirector*) [proxy realObj];
	[real pause ];
	JS_SET_RVAL(cx, vp, JSVAL_TRUE);
	return JS_TRUE;
}

// Arguments: 
// Ret value: None
JSBool JSPROXY_CCDirector_popScene(JSContext *cx, uint32_t argc, jsval *vp) {

	JSObject* obj = (JSObject *)JS_THIS_OBJECT(cx, vp);
	JSPROXY_NSObject *proxy = (JSPROXY_NSObject*) JS_GetPrivate( obj );
	NSCAssert( proxy, @"Invalid Proxy object");
	NSCAssert( [proxy realObj], @"Object not initialzied. error");
	NSCAssert( argc == 0, @"Invalid number of arguments" );

	CCDirector *real = (CCDirector*) [proxy realObj];
	[real popScene ];
	JS_SET_RVAL(cx, vp, JSVAL_TRUE);
	return JS_TRUE;
}

// Arguments: 
// Ret value: ccDirectorProjection
JSBool JSPROXY_CCDirector_projection(JSContext *cx, uint32_t argc, jsval *vp) {

	JSObject* obj = (JSObject *)JS_THIS_OBJECT(cx, vp);
	JSPROXY_NSObject *proxy = (JSPROXY_NSObject*) JS_GetPrivate( obj );
	NSCAssert( proxy, @"Invalid Proxy object");
	NSCAssert( [proxy realObj], @"Object not initialzied. error");
	NSCAssert( argc == 0, @"Invalid number of arguments" );
	ccDirectorProjection ret_val;

	CCDirector *real = (CCDirector*) [proxy realObj];
	ret_val = [real projection ];
	JS_SET_RVAL(cx, vp, INT_TO_JSVAL(ret_val));
	return JS_TRUE;
}

// Arguments: 
// Ret value: None
JSBool JSPROXY_CCDirector_purgeCachedData(JSContext *cx, uint32_t argc, jsval *vp) {

	JSObject* obj = (JSObject *)JS_THIS_OBJECT(cx, vp);
	JSPROXY_NSObject *proxy = (JSPROXY_NSObject*) JS_GetPrivate( obj );
	NSCAssert( proxy, @"Invalid Proxy object");
	NSCAssert( [proxy realObj], @"Object not initialzied. error");
	NSCAssert( argc == 0, @"Invalid number of arguments" );

	CCDirector *real = (CCDirector*) [proxy realObj];
	[real purgeCachedData ];
	JS_SET_RVAL(cx, vp, JSVAL_TRUE);
	return JS_TRUE;
}

// Arguments: CCScene*
// Ret value: None
JSBool JSPROXY_CCDirector_pushScene_(JSContext *cx, uint32_t argc, jsval *vp) {

	JSObject* obj = (JSObject *)JS_THIS_OBJECT(cx, vp);
	JSPROXY_NSObject *proxy = (JSPROXY_NSObject*) JS_GetPrivate( obj );
	NSCAssert( proxy, @"Invalid Proxy object");
	NSCAssert( [proxy realObj], @"Object not initialzied. error");
	NSCAssert( argc == 1, @"Invalid number of arguments" );
	jsval *argvp = JS_ARGV(cx,vp);

	JSObject *tmp_arg0;
	JS_ValueToObject( cx, *argvp++, &tmp_arg0 );
	JSPROXY_CCScene* proxy_arg0 = (JSPROXY_CCScene*) JS_GetPrivate( tmp_arg0 ); 
	CCScene* arg0 = (CCScene*) [proxy_arg0 realObj];

	CCDirector *real = (CCDirector*) [proxy realObj];
	[real pushScene:(CCScene*)arg0  ];
	JS_SET_RVAL(cx, vp, JSVAL_TRUE);
	return JS_TRUE;
}

// Arguments: CCScene*
// Ret value: None
JSBool JSPROXY_CCDirector_replaceScene_(JSContext *cx, uint32_t argc, jsval *vp) {

	JSObject* obj = (JSObject *)JS_THIS_OBJECT(cx, vp);
	JSPROXY_NSObject *proxy = (JSPROXY_NSObject*) JS_GetPrivate( obj );
	NSCAssert( proxy, @"Invalid Proxy object");
	NSCAssert( [proxy realObj], @"Object not initialzied. error");
	NSCAssert( argc == 1, @"Invalid number of arguments" );
	jsval *argvp = JS_ARGV(cx,vp);

	JSObject *tmp_arg0;
	JS_ValueToObject( cx, *argvp++, &tmp_arg0 );
	JSPROXY_CCScene* proxy_arg0 = (JSPROXY_CCScene*) JS_GetPrivate( tmp_arg0 ); 
	CCScene* arg0 = (CCScene*) [proxy_arg0 realObj];

	CCDirector *real = (CCDirector*) [proxy realObj];
	[real replaceScene:(CCScene*)arg0  ];
	JS_SET_RVAL(cx, vp, JSVAL_TRUE);
	return JS_TRUE;
}

// Arguments: CGSize
// Ret value: None
JSBool JSPROXY_CCDirector_reshapeProjection_(JSContext *cx, uint32_t argc, jsval *vp) {

	JSObject* obj = (JSObject *)JS_THIS_OBJECT(cx, vp);
	JSPROXY_NSObject *proxy = (JSPROXY_NSObject*) JS_GetPrivate( obj );
	NSCAssert( proxy, @"Invalid Proxy object");
	NSCAssert( [proxy realObj], @"Object not initialzied. error");
	NSCAssert( argc == 1, @"Invalid number of arguments" );
	jsval *argvp = JS_ARGV(cx,vp);

	JSObject *tmp_arg0;
	JS_ValueToObject( cx, *argvp++, &tmp_arg0 );
	CGSize arg0 = *(CGSize*)JS_GetTypedArrayData( tmp_arg0);

	CCDirector *real = (CCDirector*) [proxy realObj];
	[real reshapeProjection:(CGSize)arg0  ];
	JS_SET_RVAL(cx, vp, JSVAL_TRUE);
	return JS_TRUE;
}

// Arguments: 
// Ret value: None
JSBool JSPROXY_CCDirector_resume(JSContext *cx, uint32_t argc, jsval *vp) {

	JSObject* obj = (JSObject *)JS_THIS_OBJECT(cx, vp);
	JSPROXY_NSObject *proxy = (JSPROXY_NSObject*) JS_GetPrivate( obj );
	NSCAssert( proxy, @"Invalid Proxy object");
	NSCAssert( [proxy realObj], @"Object not initialzied. error");
	NSCAssert( argc == 0, @"Invalid number of arguments" );

	CCDirector *real = (CCDirector*) [proxy realObj];
	[real resume ];
	JS_SET_RVAL(cx, vp, JSVAL_TRUE);
	return JS_TRUE;
}

// Arguments: CCScene*
// Ret value: None
JSBool JSPROXY_CCDirector_runWithScene_(JSContext *cx, uint32_t argc, jsval *vp) {

	JSObject* obj = (JSObject *)JS_THIS_OBJECT(cx, vp);
	JSPROXY_NSObject *proxy = (JSPROXY_NSObject*) JS_GetPrivate( obj );
	NSCAssert( proxy, @"Invalid Proxy object");
	NSCAssert( [proxy realObj], @"Object not initialzied. error");
	NSCAssert( argc == 1, @"Invalid number of arguments" );
	jsval *argvp = JS_ARGV(cx,vp);

	JSObject *tmp_arg0;
	JS_ValueToObject( cx, *argvp++, &tmp_arg0 );
	JSPROXY_CCScene* proxy_arg0 = (JSPROXY_CCScene*) JS_GetPrivate( tmp_arg0 ); 
	CCScene* arg0 = (CCScene*) [proxy_arg0 realObj];

	CCDirector *real = (CCDirector*) [proxy realObj];
	[real runWithScene:(CCScene*)arg0  ];
	JS_SET_RVAL(cx, vp, JSVAL_TRUE);
	return JS_TRUE;
}

// Arguments: 
// Ret value: CCScene*
JSBool JSPROXY_CCDirector_runningScene(JSContext *cx, uint32_t argc, jsval *vp) {

	JSObject* obj = (JSObject *)JS_THIS_OBJECT(cx, vp);
	JSPROXY_NSObject *proxy = (JSPROXY_NSObject*) JS_GetPrivate( obj );
	NSCAssert( proxy, @"Invalid Proxy object");
	NSCAssert( [proxy realObj], @"Object not initialzied. error");
	NSCAssert( argc == 0, @"Invalid number of arguments" );
	CCScene* ret_val;

	CCDirector *real = (CCDirector*) [proxy realObj];
	ret_val = [real runningScene ];

	JSObject *jsobj = JS_NewObject(cx, JSPROXY_CCScene_class, JSPROXY_CCScene_object, NULL);
	JSPROXY_CCScene *ret_proxy = [[JSPROXY_CCScene alloc] initWithJSObject:jsobj];
	[ret_proxy setRealObj: ret_val];
	JS_SetPrivate(jsobj, ret_proxy);
	JS_SET_RVAL(cx, vp, OBJECT_TO_JSVAL(jsobj));

	return JS_TRUE;
}

// Arguments: 
// Ret value: ccTime
JSBool JSPROXY_CCDirector_secondsPerFrame(JSContext *cx, uint32_t argc, jsval *vp) {

	JSObject* obj = (JSObject *)JS_THIS_OBJECT(cx, vp);
	JSPROXY_NSObject *proxy = (JSPROXY_NSObject*) JS_GetPrivate( obj );
	NSCAssert( proxy, @"Invalid Proxy object");
	NSCAssert( [proxy realObj], @"Object not initialzied. error");
	NSCAssert( argc == 0, @"Invalid number of arguments" );
	ccTime ret_val;

	CCDirector *real = (CCDirector*) [proxy realObj];
	ret_val = [real secondsPerFrame ];
	JS_SET_RVAL(cx, vp, DOUBLE_TO_JSVAL(ret_val));
	return JS_TRUE;
}

// Arguments: 
// Ret value: BOOL
JSBool JSPROXY_CCDirector_sendCleanupToScene(JSContext *cx, uint32_t argc, jsval *vp) {

	JSObject* obj = (JSObject *)JS_THIS_OBJECT(cx, vp);
	JSPROXY_NSObject *proxy = (JSPROXY_NSObject*) JS_GetPrivate( obj );
	NSCAssert( proxy, @"Invalid Proxy object");
	NSCAssert( [proxy realObj], @"Object not initialzied. error");
	NSCAssert( argc == 0, @"Invalid number of arguments" );
	BOOL ret_val;

	CCDirector *real = (CCDirector*) [proxy realObj];
	ret_val = [real sendCleanupToScene ];
	JS_SET_RVAL(cx, vp, BOOLEAN_TO_JSVAL(ret_val));
	return JS_TRUE;
}

// Arguments: BOOL
// Ret value: None
JSBool JSPROXY_CCDirector_setAlphaBlending_(JSContext *cx, uint32_t argc, jsval *vp) {

	JSObject* obj = (JSObject *)JS_THIS_OBJECT(cx, vp);
	JSPROXY_NSObject *proxy = (JSPROXY_NSObject*) JS_GetPrivate( obj );
	NSCAssert( proxy, @"Invalid Proxy object");
	NSCAssert( [proxy realObj], @"Object not initialzied. error");
	NSCAssert( argc == 1, @"Invalid number of arguments" );
	jsval *argvp = JS_ARGV(cx,vp);
	JSBool arg0; JS_ValueToBoolean( cx, *argvp++, &arg0 );

	CCDirector *real = (CCDirector*) [proxy realObj];
	[real setAlphaBlending:(BOOL)arg0  ];
	JS_SET_RVAL(cx, vp, JSVAL_TRUE);
	return JS_TRUE;
}

// Arguments: NSTimeInterval
// Ret value: None
JSBool JSPROXY_CCDirector_setAnimationInterval_(JSContext *cx, uint32_t argc, jsval *vp) {

	JSObject* obj = (JSObject *)JS_THIS_OBJECT(cx, vp);
	JSPROXY_NSObject *proxy = (JSPROXY_NSObject*) JS_GetPrivate( obj );
	NSCAssert( proxy, @"Invalid Proxy object");
	NSCAssert( [proxy realObj], @"Object not initialzied. error");
	NSCAssert( argc == 1, @"Invalid number of arguments" );
	jsval *argvp = JS_ARGV(cx,vp);
	double arg0; JS_ValueToNumber( cx, *argvp++, &arg0 );

	CCDirector *real = (CCDirector*) [proxy realObj];
	[real setAnimationInterval:(NSTimeInterval)arg0  ];
	JS_SET_RVAL(cx, vp, JSVAL_TRUE);
	return JS_TRUE;
}

// Arguments: BOOL
// Ret value: None
JSBool JSPROXY_CCDirector_setDepthTest_(JSContext *cx, uint32_t argc, jsval *vp) {

	JSObject* obj = (JSObject *)JS_THIS_OBJECT(cx, vp);
	JSPROXY_NSObject *proxy = (JSPROXY_NSObject*) JS_GetPrivate( obj );
	NSCAssert( proxy, @"Invalid Proxy object");
	NSCAssert( [proxy realObj], @"Object not initialzied. error");
	NSCAssert( argc == 1, @"Invalid number of arguments" );
	jsval *argvp = JS_ARGV(cx,vp);
	JSBool arg0; JS_ValueToBoolean( cx, *argvp++, &arg0 );

	CCDirector *real = (CCDirector*) [proxy realObj];
	[real setDepthTest:(BOOL)arg0  ];
	JS_SET_RVAL(cx, vp, JSVAL_TRUE);
	return JS_TRUE;
}

// Arguments: BOOL
// Ret value: None
JSBool JSPROXY_CCDirector_setDisplayStats_(JSContext *cx, uint32_t argc, jsval *vp) {

	JSObject* obj = (JSObject *)JS_THIS_OBJECT(cx, vp);
	JSPROXY_NSObject *proxy = (JSPROXY_NSObject*) JS_GetPrivate( obj );
	NSCAssert( proxy, @"Invalid Proxy object");
	NSCAssert( [proxy realObj], @"Object not initialzied. error");
	NSCAssert( argc == 1, @"Invalid number of arguments" );
	jsval *argvp = JS_ARGV(cx,vp);
	JSBool arg0; JS_ValueToBoolean( cx, *argvp++, &arg0 );

	CCDirector *real = (CCDirector*) [proxy realObj];
	[real setDisplayStats:(BOOL)arg0  ];
	JS_SET_RVAL(cx, vp, JSVAL_TRUE);
	return JS_TRUE;
}

// Arguments: 
// Ret value: None
JSBool JSPROXY_CCDirector_setGLDefaultValues(JSContext *cx, uint32_t argc, jsval *vp) {

	JSObject* obj = (JSObject *)JS_THIS_OBJECT(cx, vp);
	JSPROXY_NSObject *proxy = (JSPROXY_NSObject*) JS_GetPrivate( obj );
	NSCAssert( proxy, @"Invalid Proxy object");
	NSCAssert( [proxy realObj], @"Object not initialzied. error");
	NSCAssert( argc == 0, @"Invalid number of arguments" );

	CCDirector *real = (CCDirector*) [proxy realObj];
	[real setGLDefaultValues ];
	JS_SET_RVAL(cx, vp, JSVAL_TRUE);
	return JS_TRUE;
}

// Arguments: BOOL
// Ret value: None
JSBool JSPROXY_CCDirector_setNextDeltaTimeZero_(JSContext *cx, uint32_t argc, jsval *vp) {

	JSObject* obj = (JSObject *)JS_THIS_OBJECT(cx, vp);
	JSPROXY_NSObject *proxy = (JSPROXY_NSObject*) JS_GetPrivate( obj );
	NSCAssert( proxy, @"Invalid Proxy object");
	NSCAssert( [proxy realObj], @"Object not initialzied. error");
	NSCAssert( argc == 1, @"Invalid number of arguments" );
	jsval *argvp = JS_ARGV(cx,vp);
	JSBool arg0; JS_ValueToBoolean( cx, *argvp++, &arg0 );

	CCDirector *real = (CCDirector*) [proxy realObj];
	[real setNextDeltaTimeZero:(BOOL)arg0  ];
	JS_SET_RVAL(cx, vp, JSVAL_TRUE);
	return JS_TRUE;
}

// Arguments: ccDirectorProjection
// Ret value: None
JSBool JSPROXY_CCDirector_setProjection_(JSContext *cx, uint32_t argc, jsval *vp) {

	JSObject* obj = (JSObject *)JS_THIS_OBJECT(cx, vp);
	JSPROXY_NSObject *proxy = (JSPROXY_NSObject*) JS_GetPrivate( obj );
	NSCAssert( proxy, @"Invalid Proxy object");
	NSCAssert( [proxy realObj], @"Object not initialzied. error");
	NSCAssert( argc == 1, @"Invalid number of arguments" );
	jsval *argvp = JS_ARGV(cx,vp);
	int32_t arg0; JS_ValueToECMAInt32( cx, *argvp++, &arg0 );

	CCDirector *real = (CCDirector*) [proxy realObj];
	[real setProjection:(ccDirectorProjection)arg0  ];
	JS_SET_RVAL(cx, vp, JSVAL_TRUE);
	return JS_TRUE;
}

// Arguments: 
// Ret value: CCDirector*
JSBool JSPROXY_CCDirector_sharedDirector(JSContext *cx, uint32_t argc, jsval *vp) {
	NSCAssert( argc == 0, @"Invalid number of arguments" );

	CCDirector* real = [CCDirector sharedDirector ];

	JSObject *jsobj = JS_NewObject(cx, JSPROXY_CCDirector_class, JSPROXY_CCDirector_object, NULL);
	JSPROXY_CCDirector *ret_proxy = [[JSPROXY_CCDirector alloc] initWithJSObject:jsobj];
	[ret_proxy setRealObj: real];
	JS_SetPrivate(jsobj, ret_proxy);
	JS_SET_RVAL(cx, vp, OBJECT_TO_JSVAL(jsobj));

	return JS_TRUE;
}

// Arguments: 
// Ret value: None
JSBool JSPROXY_CCDirector_startAnimation(JSContext *cx, uint32_t argc, jsval *vp) {

	JSObject* obj = (JSObject *)JS_THIS_OBJECT(cx, vp);
	JSPROXY_NSObject *proxy = (JSPROXY_NSObject*) JS_GetPrivate( obj );
	NSCAssert( proxy, @"Invalid Proxy object");
	NSCAssert( [proxy realObj], @"Object not initialzied. error");
	NSCAssert( argc == 0, @"Invalid number of arguments" );

	CCDirector *real = (CCDirector*) [proxy realObj];
	[real startAnimation ];
	JS_SET_RVAL(cx, vp, JSVAL_TRUE);
	return JS_TRUE;
}

// Arguments: 
// Ret value: None
JSBool JSPROXY_CCDirector_stopAnimation(JSContext *cx, uint32_t argc, jsval *vp) {

	JSObject* obj = (JSObject *)JS_THIS_OBJECT(cx, vp);
	JSPROXY_NSObject *proxy = (JSPROXY_NSObject*) JS_GetPrivate( obj );
	NSCAssert( proxy, @"Invalid Proxy object");
	NSCAssert( [proxy realObj], @"Object not initialzied. error");
	NSCAssert( argc == 0, @"Invalid number of arguments" );

	CCDirector *real = (CCDirector*) [proxy realObj];
	[real stopAnimation ];
	JS_SET_RVAL(cx, vp, JSVAL_TRUE);
	return JS_TRUE;
}

// Arguments: 
// Ret value: NSUInteger
JSBool JSPROXY_CCDirector_totalFrames(JSContext *cx, uint32_t argc, jsval *vp) {

	JSObject* obj = (JSObject *)JS_THIS_OBJECT(cx, vp);
	JSPROXY_NSObject *proxy = (JSPROXY_NSObject*) JS_GetPrivate( obj );
	NSCAssert( proxy, @"Invalid Proxy object");
	NSCAssert( [proxy realObj], @"Object not initialzied. error");
	NSCAssert( argc == 0, @"Invalid number of arguments" );
	NSUInteger ret_val;

	CCDirector *real = (CCDirector*) [proxy realObj];
	ret_val = [real totalFrames ];
	JS_SET_RVAL(cx, vp, INT_TO_JSVAL(ret_val));
	return JS_TRUE;
}

@implementation JSPROXY_CCDirector

+(void) createClassWithContext:(JSContext*)cx object:(JSObject*)globalObj name:(NSString*)name
{
	JSPROXY_CCDirector_class = (JSClass *)calloc(1, sizeof(JSClass));
	JSPROXY_CCDirector_class->name = [name UTF8String];
	JSPROXY_CCDirector_class->addProperty = JS_PropertyStub;
	JSPROXY_CCDirector_class->delProperty = JS_PropertyStub;
	JSPROXY_CCDirector_class->getProperty = JS_PropertyStub;
	JSPROXY_CCDirector_class->setProperty = JS_StrictPropertyStub;
	JSPROXY_CCDirector_class->enumerate = JS_EnumerateStub;
	JSPROXY_CCDirector_class->resolve = JS_ResolveStub;
	JSPROXY_CCDirector_class->convert = JS_ConvertStub;
	JSPROXY_CCDirector_class->finalize = JSPROXY_CCDirector_finalize;
	JSPROXY_CCDirector_class->flags = JSCLASS_HAS_PRIVATE;

	static JSPropertySpec properties[] = {
		{0, 0, 0, 0, 0}
	};
	static JSFunctionSpec funcs[] = {
		JS_FN("animationInterval", JSPROXY_CCDirector_animationInterval, 1, JSPROP_PERMANENT | JSPROP_SHARED ),
		JS_FN("convertToGL", JSPROXY_CCDirector_convertToGL_, 1, JSPROP_PERMANENT | JSPROP_SHARED ),
		JS_FN("convertToUI", JSPROXY_CCDirector_convertToUI_, 1, JSPROP_PERMANENT | JSPROP_SHARED ),
		JS_FN("createStatsLabel", JSPROXY_CCDirector_createStatsLabel, 1, JSPROP_PERMANENT | JSPROP_SHARED ),
		JS_FN("displayStats", JSPROXY_CCDirector_displayStats, 1, JSPROP_PERMANENT | JSPROP_SHARED ),
		JS_FN("drawScene", JSPROXY_CCDirector_drawScene, 1, JSPROP_PERMANENT | JSPROP_SHARED ),
		JS_FN("end", JSPROXY_CCDirector_end, 1, JSPROP_PERMANENT | JSPROP_SHARED ),
		JS_FN("getZEye", JSPROXY_CCDirector_getZEye, 1, JSPROP_PERMANENT | JSPROP_SHARED ),
		JS_FN("isAnimating", JSPROXY_CCDirector_isAnimating, 1, JSPROP_PERMANENT | JSPROP_SHARED ),
		JS_FN("isPaused", JSPROXY_CCDirector_isPaused, 1, JSPROP_PERMANENT | JSPROP_SHARED ),
		JS_FN("nextDeltaTimeZero", JSPROXY_CCDirector_nextDeltaTimeZero, 1, JSPROP_PERMANENT | JSPROP_SHARED ),
		JS_FN("pause", JSPROXY_CCDirector_pause, 1, JSPROP_PERMANENT | JSPROP_SHARED ),
		JS_FN("popScene", JSPROXY_CCDirector_popScene, 1, JSPROP_PERMANENT | JSPROP_SHARED ),
		JS_FN("projection", JSPROXY_CCDirector_projection, 1, JSPROP_PERMANENT | JSPROP_SHARED ),
		JS_FN("purgeCachedData", JSPROXY_CCDirector_purgeCachedData, 1, JSPROP_PERMANENT | JSPROP_SHARED ),
		JS_FN("pushScene", JSPROXY_CCDirector_pushScene_, 1, JSPROP_PERMANENT | JSPROP_SHARED ),
		JS_FN("replaceScene", JSPROXY_CCDirector_replaceScene_, 1, JSPROP_PERMANENT | JSPROP_SHARED ),
		JS_FN("reshapeProjection", JSPROXY_CCDirector_reshapeProjection_, 1, JSPROP_PERMANENT | JSPROP_SHARED ),
		JS_FN("resume", JSPROXY_CCDirector_resume, 1, JSPROP_PERMANENT | JSPROP_SHARED ),
		JS_FN("runWithScene", JSPROXY_CCDirector_runWithScene_, 1, JSPROP_PERMANENT | JSPROP_SHARED ),
		JS_FN("runningScene", JSPROXY_CCDirector_runningScene, 1, JSPROP_PERMANENT | JSPROP_SHARED ),
		JS_FN("secondsPerFrame", JSPROXY_CCDirector_secondsPerFrame, 1, JSPROP_PERMANENT | JSPROP_SHARED ),
		JS_FN("sendCleanupToScene", JSPROXY_CCDirector_sendCleanupToScene, 1, JSPROP_PERMANENT | JSPROP_SHARED ),
		JS_FN("setAlphaBlending", JSPROXY_CCDirector_setAlphaBlending_, 1, JSPROP_PERMANENT | JSPROP_SHARED ),
		JS_FN("setAnimationInterval", JSPROXY_CCDirector_setAnimationInterval_, 1, JSPROP_PERMANENT | JSPROP_SHARED ),
		JS_FN("setDepthTest", JSPROXY_CCDirector_setDepthTest_, 1, JSPROP_PERMANENT | JSPROP_SHARED ),
		JS_FN("setDisplayStats", JSPROXY_CCDirector_setDisplayStats_, 1, JSPROP_PERMANENT | JSPROP_SHARED ),
		JS_FN("setGLDefaultValues", JSPROXY_CCDirector_setGLDefaultValues, 1, JSPROP_PERMANENT | JSPROP_SHARED ),
		JS_FN("setNextDeltaTimeZero", JSPROXY_CCDirector_setNextDeltaTimeZero_, 1, JSPROP_PERMANENT | JSPROP_SHARED ),
		JS_FN("setProjection", JSPROXY_CCDirector_setProjection_, 1, JSPROP_PERMANENT | JSPROP_SHARED ),
		JS_FN("startAnimation", JSPROXY_CCDirector_startAnimation, 1, JSPROP_PERMANENT | JSPROP_SHARED ),
		JS_FN("stopAnimation", JSPROXY_CCDirector_stopAnimation, 1, JSPROP_PERMANENT | JSPROP_SHARED ),
		JS_FN("totalFrames", JSPROXY_CCDirector_totalFrames, 1, JSPROP_PERMANENT | JSPROP_SHARED ),
		JS_FS_END
	};
	static JSFunctionSpec st_funcs[] = {
		JS_FN("sharedDirector", JSPROXY_CCDirector_sharedDirector, 1, JSPROP_PERMANENT | JSPROP_SHARED ),
		JS_FS_END
	};

	JSPROXY_CCDirector_object = JS_InitClass(cx, globalObj, JSPROXY_NSObject_object, JSPROXY_CCDirector_class, JSPROXY_CCDirector_constructor,0,properties,funcs,NULL,st_funcs);
}

@end