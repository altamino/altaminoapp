.class Lcom/narvii/widget/NVListView$4;
.super Ljava/lang/Object;
.source "NVListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/NVListView;
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

    .line 807
    iput-object p1, p0, Lcom/narvii/widget/NVListView$4;->this$0:Lcom/narvii/widget/NVListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 810
    iget-object v0, p0, Lcom/narvii/widget/NVListView$4;->this$0:Lcom/narvii/widget/NVListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/narvii/widget/NVListView;->access$702(Lcom/narvii/widget/NVListView;Z)Z

    return-void
.end method
