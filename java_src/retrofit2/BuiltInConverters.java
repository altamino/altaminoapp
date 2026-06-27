package retrofit2;

import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import retrofit2.Converter;
import retrofit2.http.Streaming;

/* loaded from: classes4.dex */
final class BuiltInConverters extends Converter.Factory {
    BuiltInConverters() {
    }

    @Override // retrofit2.Converter.Factory
    public Converter<ResponseBody, ?> responseBodyConverter(Type type, Annotation[] annotationArr, Retrofit retrofit) {
        if (type == ResponseBody.class) {
            if (Utils.isAnnotationPresent(annotationArr, Streaming.class)) {
                return StreamingResponseBodyConverter.INSTANCE;
            }
            return BufferingResponseBodyConverter.INSTANCE;
        }
        if (type == Void.class) {
            return VoidResponseBodyConverter.INSTANCE;
        }
        return null;
    }

    @Override // retrofit2.Converter.Factory
    public Converter<?, RequestBody> requestBodyConverter(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, Retrofit retrofit) {
        if (RequestBody.class.isAssignableFrom(Utils.getRawType(type))) {
            return RequestBodyConverter.INSTANCE;
        }
        return null;
    }

    static final class VoidResponseBodyConverter implements Converter<ResponseBody, Void> {
        static final VoidResponseBodyConverter INSTANCE = new VoidResponseBodyConverter();

        VoidResponseBodyConverter() {
        }

        @Override // retrofit2.Converter
        public Void convert(ResponseBody responseBody) throws IOException {
            responseBody.close();
            return null;
        }
    }

    static final class RequestBodyConverter implements Converter<RequestBody, RequestBody> {
        static final RequestBodyConverter INSTANCE = new RequestBodyConverter();

        /* renamed from: convert, reason: avoid collision after fix types in other method */
        public RequestBody convert2(RequestBody requestBody) throws IOException {
            return requestBody;
        }

        RequestBodyConverter() {
        }

        @Override // retrofit2.Converter
        public /* bridge */ /* synthetic */ RequestBody convert(RequestBody requestBody) throws IOException {
            RequestBody requestBody2 = requestBody;
            convert2(requestBody2);
            return requestBody2;
        }
    }

    static final class StreamingResponseBodyConverter implements Converter<ResponseBody, ResponseBody> {
        static final StreamingResponseBodyConverter INSTANCE = new StreamingResponseBodyConverter();

        /* renamed from: convert, reason: avoid collision after fix types in other method */
        public ResponseBody convert2(ResponseBody responseBody) throws IOException {
            return responseBody;
        }

        StreamingResponseBodyConverter() {
        }

        @Override // retrofit2.Converter
        public /* bridge */ /* synthetic */ ResponseBody convert(ResponseBody responseBody) throws IOException {
            ResponseBody responseBody2 = responseBody;
            convert2(responseBody2);
            return responseBody2;
        }
    }

    static final class BufferingResponseBodyConverter implements Converter<ResponseBody, ResponseBody> {
        static final BufferingResponseBodyConverter INSTANCE = new BufferingResponseBodyConverter();

        BufferingResponseBodyConverter() {
        }

        @Override // retrofit2.Converter
        public ResponseBody convert(ResponseBody responseBody) throws IOException {
            try {
                return Utils.buffer(responseBody);
            } finally {
                responseBody.close();
            }
        }
    }

    static final class ToStringConverter implements Converter<Object, String> {
        static final ToStringConverter INSTANCE = new ToStringConverter();

        ToStringConverter() {
        }

        @Override // retrofit2.Converter
        public String convert(Object obj) {
            return obj.toString();
        }
    }
}
