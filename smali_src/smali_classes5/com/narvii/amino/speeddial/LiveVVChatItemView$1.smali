.class Lcom/narvii/amino/speeddial/LiveVVChatItemView$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/amino/speeddial/LiveVVChatItemView$1;->this$0:Lcom/narvii/amino/speeddial/LiveVVChatItemView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onImageChanged(Lcom/narvii/widget/NVImageView;ILcom/narvii/model/Media;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/amino/speeddial/LiveVVChatItemView$1;->this$0:Lcom/narvii/amino/speeddial/LiveVVChatItemView;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/amino/speeddial/LiveVVChatItemView;->a(Lcom/narvii/amino/speeddial/LiveVVChatItemView;)Landroid/view/View;

    .line 6
    move-result-object p1

    .line 7
    const/4 p3, 0x4

    .line 8
    .line 9
    if-ne p2, p3, :cond_0

    .line 10
    const/4 p2, 0x0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    const/16 p2, 0x8

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 17
    return-void
.end method
