.class public abstract Lcom/google/android/datatransport/runtime/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ENCODER:Lcom/google/firebase/encoders/proto/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/firebase/encoders/proto/h;->a()Lcom/google/firebase/encoders/proto/h$a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget-object v1, Lcom/google/android/datatransport/runtime/a;->CONFIG:Lk4/a;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/proto/h$a;->d(Lk4/a;)Lcom/google/firebase/encoders/proto/h$a;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/google/firebase/encoders/proto/h$a;->c()Lcom/google/firebase/encoders/proto/h;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    sput-object v0, Lcom/google/android/datatransport/runtime/m;->ENCODER:Lcom/google/firebase/encoders/proto/h;

    .line 17
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static a(Ljava/lang/Object;)[B
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/google/android/datatransport/runtime/m;->ENCODER:Lcom/google/firebase/encoders/proto/h;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/google/firebase/encoders/proto/h;->c(Ljava/lang/Object;)[B

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method


# virtual methods
.method public abstract b()Lh2/a;
.end method
