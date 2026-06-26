.class Lcom/narvii/headlines/category/HeadlineChannelEditFragment$1;
.super Ljava/lang/Object;
.source "HeadlineChannelEditFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/headlines/category/HeadlineChannelEditFragment;


# direct methods
.method constructor <init>(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$1;->this$0:Lcom/narvii/headlines/category/HeadlineChannelEditFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 114
    iget-object p1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$1;->this$0:Lcom/narvii/headlines/category/HeadlineChannelEditFragment;

    invoke-static {p1}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->access$000(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 115
    iget-object p1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$1;->this$0:Lcom/narvii/headlines/category/HeadlineChannelEditFragment;

    invoke-static {p1}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->access$100(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;)V

    goto :goto_0

    .line 117
    :cond_0
    iget-object p1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$1;->this$0:Lcom/narvii/headlines/category/HeadlineChannelEditFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    :goto_0
    return-void
.end method
