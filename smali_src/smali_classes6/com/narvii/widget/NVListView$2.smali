.class Lcom/narvii/widget/NVListView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/NVListView;->onOverScrolled(IIZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/NVListView;


# direct methods
.method constructor <init>(Lcom/narvii/widget/NVListView;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/NVListView$2;->this$0:Lcom/narvii/widget/NVListView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NVListView$2;->this$0:Lcom/narvii/widget/NVListView;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/widget/NVListView;->b(Lcom/narvii/widget/NVListView;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/widget/NVListView$2;->this$0:Lcom/narvii/widget/NVListView;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/widget/NVListView;->requestLayout()V

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/NVListView$2;->this$0:Lcom/narvii/widget/NVListView;

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lcom/narvii/widget/NVListView;->d(Lcom/narvii/widget/NVListView;)Ljava/lang/Runnable;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    if-ne v0, p0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/widget/NVListView$2;->this$0:Lcom/narvii/widget/NVListView;

    .line 24
    const/4 v1, 0x0

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v1}, Lcom/narvii/widget/NVListView;->k(Lcom/narvii/widget/NVListView;Ljava/lang/Runnable;)V

    .line 28
    :cond_1
    return-void
.end method
