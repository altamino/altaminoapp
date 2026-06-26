.class Lcom/narvii/amino/speeddial/LiveVVChatItemView$1;
.super Ljava/lang/Object;
.source "LiveVVChatItemView.java"

# interfaces
.implements Lcom/narvii/widget/NVImageView$OnImageChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/amino/speeddial/LiveVVChatItemView;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/amino/speeddial/LiveVVChatItemView;


# direct methods
.method constructor <init>(Lcom/narvii/amino/speeddial/LiveVVChatItemView;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/narvii/amino/speeddial/LiveVVChatItemView$1;->this$0:Lcom/narvii/amino/speeddial/LiveVVChatItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageChanged(Lcom/narvii/widget/NVImageView;ILcom/narvii/model/Media;)V
    .locals 0

    .line 76
    iget-object p1, p0, Lcom/narvii/amino/speeddial/LiveVVChatItemView$1;->this$0:Lcom/narvii/amino/speeddial/LiveVVChatItemView;

    invoke-static {p1}, Lcom/narvii/amino/speeddial/LiveVVChatItemView;->access$000(Lcom/narvii/amino/speeddial/LiveVVChatItemView;)Landroid/view/View;

    move-result-object p1

    const/4 p3, 0x4

    if-ne p2, p3, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
