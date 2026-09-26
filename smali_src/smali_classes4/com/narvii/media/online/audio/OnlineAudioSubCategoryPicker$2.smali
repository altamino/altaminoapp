.class Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->updatePickText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/media/online/audio/model/AssetListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;

.field final synthetic val$pickText:Landroid/widget/TextView;

.field final synthetic val$spinning:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;Ljava/lang/Class;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$2;->this$0:Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$2;->val$pickText:Landroid/widget/TextView;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$2;->val$spinning:Landroid/view/View;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 10
    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0
    .param p5    # Lcom/narvii/model/api/ApiResponse;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "I",
            "Ljava/util/List<",
            "Lcom/narvii/util/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/narvii/model/api/ApiResponse;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$2;->this$0:Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;

    .line 3
    const/4 p2, 0x1

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p2}, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->x(Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;Z)V

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$2;->val$spinning:Landroid/view/View;

    .line 9
    .line 10
    const/16 p3, 0x8

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$2;->val$pickText:Landroid/widget/TextView;

    .line 16
    const/4 p3, 0x0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$2;->this$0:Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->v(Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;)Landroid/view/View;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    const p3, -0x2ea7a7

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 32
    .line 33
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$2;->this$0:Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->v(Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;)Landroid/view/View;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    .line 41
    .line 42
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$2;->val$pickText:Landroid/widget/TextView;

    .line 43
    const/4 p2, -0x1

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47
    .line 48
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$2;->val$pickText:Landroid/widget/TextView;

    .line 49
    .line 50
    sget p2, Lcom/narvii/lib/R$string;->subcategory_pick_text_fail:I

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 54
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/media/online/audio/model/AssetListResponse;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    iget p1, p2, Lcom/narvii/media/online/audio/model/AssetListResponse;->total:I

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$2;->this$0:Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;

    .line 3
    invoke-static {v1}, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->v(Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;)Landroid/view/View;

    move-result-object v1

    const v2, -0xb5b5b6

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$2;->this$0:Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;

    .line 4
    invoke-static {v1}, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->v(Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    iget-object v1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$2;->val$pickText:Landroid/widget/TextView;

    const v2, -0x727267

    .line 5
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$2;->this$0:Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;

    .line 6
    invoke-static {v1}, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->v(Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;)Landroid/view/View;

    move-result-object v1

    const v2, -0xfb1b47

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$2;->this$0:Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;

    .line 7
    invoke-static {v1}, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->v(Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/View;->setClickable(Z)V

    iget-object v1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$2;->val$pickText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$2;->this$0:Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;

    .line 8
    invoke-virtual {v2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/narvii/lib/R$color;->account_text:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    iget-object v1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$2;->this$0:Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;

    .line 9
    invoke-static {v1, v0}, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->x(Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;Z)V

    iget-object v1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$2;->val$spinning:Landroid/view/View;

    const/16 v2, 0x8

    .line 10
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$2;->val$pickText:Landroid/widget/TextView;

    .line 11
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$2;->val$pickText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$2;->this$0:Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;

    sget v3, Lcom/narvii/lib/R$string;->subcategory_pick_text:I

    new-array p2, p2, [Ljava/lang/Object;

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    invoke-virtual {v2, v3, p2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/narvii/media/online/audio/model/AssetListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$2;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/media/online/audio/model/AssetListResponse;)V

    return-void
.end method
