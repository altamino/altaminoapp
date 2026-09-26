.class Lio/agora/rtc/gl/EglRenderer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/gl/EglRenderer;->init(Lio/agora/rtc/gl/EglBase$Context;[ILio/agora/rtc/gl/RendererCommon$GlDrawer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/rtc/gl/EglRenderer;

.field final synthetic val$configAttributes:[I

.field final synthetic val$sharedContext:Lio/agora/rtc/gl/EglBase$Context;


# direct methods
.method constructor <init>(Lio/agora/rtc/gl/EglRenderer;Lio/agora/rtc/gl/EglBase$Context;[I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$configAttributes",
            "val$sharedContext"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lio/agora/rtc/gl/EglRenderer$2;->this$0:Lio/agora/rtc/gl/EglRenderer;

    .line 3
    .line 4
    iput-object p2, p0, Lio/agora/rtc/gl/EglRenderer$2;->val$sharedContext:Lio/agora/rtc/gl/EglBase$Context;

    .line 5
    .line 6
    iput-object p3, p0, Lio/agora/rtc/gl/EglRenderer$2;->val$configAttributes:[I

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer$2;->val$sharedContext:Lio/agora/rtc/gl/EglBase$Context;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer$2;->this$0:Lio/agora/rtc/gl/EglRenderer;

    .line 7
    .line 8
    const-string v1, "EglBase.create context"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lio/agora/rtc/gl/EglRenderer;->access$600(Lio/agora/rtc/gl/EglRenderer;Ljava/lang/String;)V

    .line 12
    .line 13
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer$2;->this$0:Lio/agora/rtc/gl/EglRenderer;

    .line 14
    .line 15
    iget-object v1, p0, Lio/agora/rtc/gl/EglRenderer$2;->val$sharedContext:Lio/agora/rtc/gl/EglBase$Context;

    .line 16
    .line 17
    iget-object v2, p0, Lio/agora/rtc/gl/EglRenderer$2;->val$configAttributes:[I

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v2}, Lio/agora/rtc/gl/EglBase;->create(Lio/agora/rtc/gl/EglBase$Context;[I)Lio/agora/rtc/gl/EglBase;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v1}, Lio/agora/rtc/gl/EglRenderer;->access$002(Lio/agora/rtc/gl/EglRenderer;Lio/agora/rtc/gl/EglBase;)Lio/agora/rtc/gl/EglBase;

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer$2;->this$0:Lio/agora/rtc/gl/EglRenderer;

    .line 28
    .line 29
    const-string v1, "EglBase.create shared context"

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v1}, Lio/agora/rtc/gl/EglRenderer;->access$600(Lio/agora/rtc/gl/EglRenderer;Ljava/lang/String;)V

    .line 33
    .line 34
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer$2;->this$0:Lio/agora/rtc/gl/EglRenderer;

    .line 35
    .line 36
    iget-object v1, p0, Lio/agora/rtc/gl/EglRenderer$2;->val$sharedContext:Lio/agora/rtc/gl/EglBase$Context;

    .line 37
    .line 38
    iget-object v2, p0, Lio/agora/rtc/gl/EglRenderer$2;->val$configAttributes:[I

    .line 39
    .line 40
    .line 41
    invoke-static {v1, v2}, Lio/agora/rtc/gl/EglBase;->create(Lio/agora/rtc/gl/EglBase$Context;[I)Lio/agora/rtc/gl/EglBase;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    .line 45
    invoke-static {v0, v1}, Lio/agora/rtc/gl/EglRenderer;->access$002(Lio/agora/rtc/gl/EglRenderer;Lio/agora/rtc/gl/EglBase;)Lio/agora/rtc/gl/EglBase;

    .line 46
    :goto_0
    return-void
.end method
