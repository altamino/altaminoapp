.class abstract Lretrofit2/HttpServiceMethod;
.super Lretrofit2/ServiceMethod;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit2/HttpServiceMethod$CallAdapted;,
        Lretrofit2/HttpServiceMethod$SuspendForResponse;,
        Lretrofit2/HttpServiceMethod$SuspendForBody;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseT:",
        "Ljava/lang/Object;",
        "ReturnT:",
        "Ljava/lang/Object;",
        ">",
        "Lretrofit2/ServiceMethod<",
        "TReturnT;>;"
    }
.end annotation


# instance fields
.field private final callFactory:Lokhttp3/Call$Factory;

.field private final requestFactory:Lretrofit2/RequestFactory;

.field private final responseConverter:Lretrofit2/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Converter<",
            "Lokhttp3/ResponseBody;",
            "TResponseT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lretrofit2/RequestFactory;Lokhttp3/Call$Factory;Lretrofit2/Converter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/RequestFactory;",
            "Lokhttp3/Call$Factory;",
            "Lretrofit2/Converter<",
            "Lokhttp3/ResponseBody;",
            "TResponseT;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lretrofit2/ServiceMethod;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lretrofit2/HttpServiceMethod;->requestFactory:Lretrofit2/RequestFactory;

    .line 6
    .line 7
    iput-object p2, p0, Lretrofit2/HttpServiceMethod;->callFactory:Lokhttp3/Call$Factory;

    .line 8
    .line 9
    iput-object p3, p0, Lretrofit2/HttpServiceMethod;->responseConverter:Lretrofit2/Converter;

    .line 10
    return-void
.end method

.method private static createCallAdapter(Lretrofit2/Retrofit;Ljava/lang/reflect/Method;Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/CallAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResponseT:",
            "Ljava/lang/Object;",
            "ReturnT:",
            "Ljava/lang/Object;",
            ">(",
            "Lretrofit2/Retrofit;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lretrofit2/CallAdapter<",
            "TResponseT;TReturnT;>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0, p2, p3}, Lretrofit2/Retrofit;->callAdapter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/CallAdapter;

    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    move-exception p0

    .line 7
    const/4 p3, 0x1

    .line 8
    .line 9
    new-array p3, p3, [Ljava/lang/Object;

    .line 10
    const/4 v0, 0x0

    .line 11
    .line 12
    aput-object p2, p3, v0

    .line 13
    .line 14
    const-string p2, "Unable to create call adapter for %s"

    .line 15
    .line 16
    .line 17
    invoke-static {p1, p0, p2, p3}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    .line 18
    move-result-object p0

    .line 19
    throw p0
.end method

.method private static createResponseConverter(Lretrofit2/Retrofit;Ljava/lang/reflect/Method;Ljava/lang/reflect/Type;)Lretrofit2/Converter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResponseT:",
            "Ljava/lang/Object;",
            ">(",
            "Lretrofit2/Retrofit;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lretrofit2/Converter<",
            "Lokhttp3/ResponseBody;",
            "TResponseT;>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/reflect/AccessibleObject;->getAnnotations()[Ljava/lang/annotation/Annotation;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    :try_start_0
    invoke-virtual {p0, p2, v0}, Lretrofit2/Retrofit;->responseBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    .line 8
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return-object p0

    .line 10
    :catch_0
    move-exception p0

    .line 11
    const/4 v0, 0x1

    .line 12
    .line 13
    new-array v0, v0, [Ljava/lang/Object;

    .line 14
    const/4 v1, 0x0

    .line 15
    .line 16
    aput-object p2, v0, v1

    .line 17
    .line 18
    const-string p2, "Unable to create converter for %s"

    .line 19
    .line 20
    .line 21
    invoke-static {p1, p0, p2, v0}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    .line 22
    move-result-object p0

    .line 23
    throw p0
.end method

.method static parseAnnotations(Lretrofit2/Retrofit;Ljava/lang/reflect/Method;Lretrofit2/RequestFactory;)Lretrofit2/HttpServiceMethod;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResponseT:",
            "Ljava/lang/Object;",
            "ReturnT:",
            "Ljava/lang/Object;",
            ">(",
            "Lretrofit2/Retrofit;",
            "Ljava/lang/reflect/Method;",
            "Lretrofit2/RequestFactory;",
            ")",
            "Lretrofit2/HttpServiceMethod<",
            "TResponseT;TReturnT;>;"
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p2, Lretrofit2/RequestFactory;->isKotlinSuspendFunction:Z

    .line 3
    const/4 v6, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/reflect/AccessibleObject;->getAnnotations()[Ljava/lang/annotation/Annotation;

    .line 7
    move-result-object v1

    .line 8
    .line 9
    const-class v2, Lretrofit2/Response;

    .line 10
    const/4 v3, 0x0

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    .line 16
    move-result-object v4

    .line 17
    array-length v5, v4

    .line 18
    const/4 v7, 0x1

    .line 19
    sub-int/2addr v5, v7

    .line 20
    .line 21
    aget-object v4, v4, v5

    .line 22
    .line 23
    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    .line 24
    .line 25
    .line 26
    invoke-static {v3, v4}, Lretrofit2/Utils;->getParameterLowerBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    .line 27
    move-result-object v4

    .line 28
    .line 29
    .line 30
    invoke-static {v4}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 31
    move-result-object v5

    .line 32
    .line 33
    if-ne v5, v2, :cond_0

    .line 34
    .line 35
    instance-of v5, v4, Ljava/lang/reflect/ParameterizedType;

    .line 36
    .line 37
    if-eqz v5, :cond_0

    .line 38
    .line 39
    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    .line 40
    .line 41
    .line 42
    invoke-static {v3, v4}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    .line 43
    move-result-object v4

    .line 44
    move v5, v7

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    move v5, v3

    .line 47
    .line 48
    :goto_0
    new-instance v8, Lretrofit2/Utils$ParameterizedTypeImpl;

    .line 49
    .line 50
    new-array v7, v7, [Ljava/lang/reflect/Type;

    .line 51
    .line 52
    aput-object v4, v7, v3

    .line 53
    const/4 v4, 0x0

    .line 54
    .line 55
    const-class v9, Lretrofit2/Call;

    .line 56
    .line 57
    .line 58
    invoke-direct {v8, v4, v9, v7}, Lretrofit2/Utils$ParameterizedTypeImpl;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    .line 59
    .line 60
    .line 61
    invoke-static {v1}, Lretrofit2/SkipCallbackExecutorImpl;->ensurePresent([Ljava/lang/annotation/Annotation;)[Ljava/lang/annotation/Annotation;

    .line 62
    move-result-object v1

    .line 63
    goto :goto_1

    .line 64
    .line 65
    .line 66
    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    .line 67
    move-result-object v8

    .line 68
    move v5, v3

    .line 69
    .line 70
    .line 71
    :goto_1
    invoke-static {p0, p1, v8, v1}, Lretrofit2/HttpServiceMethod;->createCallAdapter(Lretrofit2/Retrofit;Ljava/lang/reflect/Method;Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/CallAdapter;

    .line 72
    move-result-object v7

    .line 73
    .line 74
    .line 75
    invoke-interface {v7}, Lretrofit2/CallAdapter;->responseType()Ljava/lang/reflect/Type;

    .line 76
    move-result-object v1

    .line 77
    .line 78
    const-class v4, Lokhttp3/Response;

    .line 79
    .line 80
    if-eq v1, v4, :cond_7

    .line 81
    .line 82
    if-eq v1, v2, :cond_6

    .line 83
    .line 84
    iget-object v2, p2, Lretrofit2/RequestFactory;->httpMethod:Ljava/lang/String;

    .line 85
    .line 86
    const-string v4, "HEAD"

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    move-result v2

    .line 91
    .line 92
    if-eqz v2, :cond_3

    .line 93
    .line 94
    const-class v2, Ljava/lang/Void;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 98
    move-result v2

    .line 99
    .line 100
    if-eqz v2, :cond_2

    .line 101
    goto :goto_2

    .line 102
    .line 103
    :cond_2
    const-string p0, "HEAD method must use Void as response type."

    .line 104
    .line 105
    new-array p2, v3, [Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    invoke-static {p1, p0, p2}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    .line 109
    move-result-object p0

    .line 110
    throw p0

    .line 111
    .line 112
    .line 113
    :cond_3
    :goto_2
    invoke-static {p0, p1, v1}, Lretrofit2/HttpServiceMethod;->createResponseConverter(Lretrofit2/Retrofit;Ljava/lang/reflect/Method;Ljava/lang/reflect/Type;)Lretrofit2/Converter;

    .line 114
    move-result-object v4

    .line 115
    .line 116
    iget-object v3, p0, Lretrofit2/Retrofit;->callFactory:Lokhttp3/Call$Factory;

    .line 117
    .line 118
    if-nez v0, :cond_4

    .line 119
    .line 120
    new-instance p0, Lretrofit2/HttpServiceMethod$CallAdapted;

    .line 121
    .line 122
    .line 123
    invoke-direct {p0, p2, v3, v4, v7}, Lretrofit2/HttpServiceMethod$CallAdapted;-><init>(Lretrofit2/RequestFactory;Lokhttp3/Call$Factory;Lretrofit2/Converter;Lretrofit2/CallAdapter;)V

    .line 124
    return-object p0

    .line 125
    .line 126
    :cond_4
    if-eqz v5, :cond_5

    .line 127
    .line 128
    new-instance p0, Lretrofit2/HttpServiceMethod$SuspendForResponse;

    .line 129
    .line 130
    .line 131
    invoke-direct {p0, p2, v3, v4, v7}, Lretrofit2/HttpServiceMethod$SuspendForResponse;-><init>(Lretrofit2/RequestFactory;Lokhttp3/Call$Factory;Lretrofit2/Converter;Lretrofit2/CallAdapter;)V

    .line 132
    return-object p0

    .line 133
    .line 134
    :cond_5
    new-instance p0, Lretrofit2/HttpServiceMethod$SuspendForBody;

    .line 135
    move-object v1, p0

    .line 136
    move-object v2, p2

    .line 137
    move-object v5, v7

    .line 138
    .line 139
    .line 140
    invoke-direct/range {v1 .. v6}, Lretrofit2/HttpServiceMethod$SuspendForBody;-><init>(Lretrofit2/RequestFactory;Lokhttp3/Call$Factory;Lretrofit2/Converter;Lretrofit2/CallAdapter;Z)V

    .line 141
    return-object p0

    .line 142
    .line 143
    :cond_6
    const-string p0, "Response must include generic type (e.g., Response<String>)"

    .line 144
    .line 145
    new-array p2, v3, [Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    invoke-static {p1, p0, p2}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    .line 149
    move-result-object p0

    .line 150
    throw p0

    .line 151
    .line 152
    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .line 157
    const-string p2, "\'"

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-static {v1}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 164
    move-result-object p2

    .line 165
    .line 166
    .line 167
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 168
    move-result-object p2

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    const-string p2, "\' is not a valid response body type. Did you mean ResponseBody?"

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    move-result-object p0

    .line 181
    .line 182
    new-array p2, v3, [Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    invoke-static {p1, p0, p2}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    .line 186
    move-result-object p0

    .line 187
    throw p0
.end method


# virtual methods
.method protected abstract adapt(Lretrofit2/Call;[Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "TResponseT;>;[",
            "Ljava/lang/Object;",
            ")TReturnT;"
        }
    .end annotation
.end method

.method final invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TReturnT;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lretrofit2/OkHttpCall;

    .line 3
    .line 4
    iget-object v1, p0, Lretrofit2/HttpServiceMethod;->requestFactory:Lretrofit2/RequestFactory;

    .line 5
    .line 6
    iget-object v2, p0, Lretrofit2/HttpServiceMethod;->callFactory:Lokhttp3/Call$Factory;

    .line 7
    .line 8
    iget-object v3, p0, Lretrofit2/HttpServiceMethod;->responseConverter:Lretrofit2/Converter;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1, p1, v2, v3}, Lretrofit2/OkHttpCall;-><init>(Lretrofit2/RequestFactory;[Ljava/lang/Object;Lokhttp3/Call$Factory;Lretrofit2/Converter;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0, p1}, Lretrofit2/HttpServiceMethod;->adapt(Lretrofit2/Call;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method
