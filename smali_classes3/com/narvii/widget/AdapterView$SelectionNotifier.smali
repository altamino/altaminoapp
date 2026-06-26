.class Lcom/narvii/widget/AdapterView$SelectionNotifier;
.super Landroid/os/Handler;
.source "AdapterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/AdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionNotifier"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/AdapterView;


# direct methods
.method private constructor <init>(Lcom/narvii/widget/AdapterView;)V
    .locals 0

    .line 873
    iput-object p1, p0, Lcom/narvii/widget/AdapterView$SelectionNotifier;->this$0:Lcom/narvii/widget/AdapterView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/widget/AdapterView;Lcom/narvii/widget/AdapterView$1;)V
    .locals 0

    .line 873
    invoke-direct {p0, p1}, Lcom/narvii/widget/AdapterView$SelectionNotifier;-><init>(Lcom/narvii/widget/AdapterView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 876
    iget-object v0, p0, Lcom/narvii/widget/AdapterView$SelectionNotifier;->this$0:Lcom/narvii/widget/AdapterView;

    iget-boolean v1, v0, Lcom/narvii/widget/AdapterView;->mDataChanged:Z

    if-eqz v1, :cond_0

    .line 880
    invoke-virtual {p0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 882
    :cond_0
    invoke-static {v0}, Lcom/narvii/widget/AdapterView;->access$200(Lcom/narvii/widget/AdapterView;)V

    :goto_0
    return-void
.end method
