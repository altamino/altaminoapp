.class Lcom/narvii/widget/AdapterView$SelectionNotifier;
.super Landroid/os/Handler;
.source "SourceFile"

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

    iput-object p1, p0, Lcom/narvii/widget/AdapterView$SelectionNotifier;->this$0:Lcom/narvii/widget/AdapterView;

    .line 2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/widget/AdapterView;Lcom/narvii/widget/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/widget/AdapterView$SelectionNotifier;-><init>(Lcom/narvii/widget/AdapterView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/AdapterView$SelectionNotifier;->this$0:Lcom/narvii/widget/AdapterView;

    .line 3
    .line 4
    iget-boolean v1, v0, Lcom/narvii/widget/AdapterView;->mDataChanged:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-static {v0}, Lcom/narvii/widget/AdapterView;->a(Lcom/narvii/widget/AdapterView;)V

    .line 14
    :goto_0
    return-void
.end method
