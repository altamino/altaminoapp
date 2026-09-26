.class public final synthetic Lcom/narvii/chat/rtc/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le8/l;


# instance fields
.field public final synthetic a:Lcom/narvii/util/Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/util/Callback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/rtc/b;->a:Lcom/narvii/util/Callback;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/rtc/b;->a:Lcom/narvii/util/Callback;

    invoke-static {v0, p1}, Lcom/narvii/chat/rtc/RtcService;->i(Lcom/narvii/util/Callback;Ljava/lang/Object;)Lw7/l0;

    move-result-object p1

    return-object p1
.end method
