.class public final Lt4/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt4/b$a;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lt4/b;


# instance fields
.field private final messaging_client_event_:Lt4/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lt4/b$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lt4/b$a;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lt4/b$a;->a()Lt4/b;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    sput-object v0, Lt4/b;->DEFAULT_INSTANCE:Lt4/b;

    .line 12
    return-void
.end method

.method constructor <init>(Lt4/a;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lt4/b;->messaging_client_event_:Lt4/a;

    .line 6
    return-void
.end method

.method public static b()Lt4/b$a;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lt4/b$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lt4/b$a;-><init>()V

    .line 6
    return-object v0
.end method


# virtual methods
.method public a()Lt4/a;
    .locals 1
    .annotation build Lcom/google/firebase/encoders/proto/d;
        tag = 0x1
    .end annotation

    .line 1
    iget-object v0, p0, Lt4/b;->messaging_client_event_:Lt4/a;

    return-object v0
.end method

.method public c()[B
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/firebase/messaging/i0;->a(Ljava/lang/Object;)[B

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
