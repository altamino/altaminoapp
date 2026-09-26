.class Lcom/narvii/headlines/category/HeadlineChannelEditFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$1;->this$0:Lcom/narvii/headlines/category/HeadlineChannelEditFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$1;->this$0:Lcom/narvii/headlines/category/HeadlineChannelEditFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->u(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;)Z

    .line 6
    move-result p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$1;->this$0:Lcom/narvii/headlines/category/HeadlineChannelEditFragment;

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/narvii/headlines/category/HeadlineChannelEditFragment;->H(Lcom/narvii/headlines/category/HeadlineChannelEditFragment;)V

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    iget-object p1, p0, Lcom/narvii/headlines/category/HeadlineChannelEditFragment$1;->this$0:Lcom/narvii/headlines/category/HeadlineChannelEditFragment;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    .line 20
    :goto_0
    return-void
.end method
