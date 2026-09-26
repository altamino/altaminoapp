.class Lcom/narvii/logging/ImpressionDelegate$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/logging/ImpressionDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/logging/ImpressionDelegate;


# direct methods
.method constructor <init>(Lcom/narvii/logging/ImpressionDelegate;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/logging/ImpressionDelegate$2;->this$0:Lcom/narvii/logging/ImpressionDelegate;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/logging/ImpressionDelegate$2;->this$0:Lcom/narvii/logging/ImpressionDelegate;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/logging/ImpressionDelegate;->nvFragment:Lcom/narvii/app/NVFragment;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->isActive()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/logging/ImpressionDelegate$2;->this$0:Lcom/narvii/logging/ImpressionDelegate;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/logging/ImpressionDelegate;->logImpressionQuit()V

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/logging/ImpressionDelegate$2;->this$0:Lcom/narvii/logging/ImpressionDelegate;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/narvii/logging/ImpressionDelegate;->logImpression()V

    .line 23
    :cond_0
    return-void
.end method
