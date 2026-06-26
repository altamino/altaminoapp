.class Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "OnlineAudioSubCategoryPicker.java"


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

    .line 163
    iput-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$2;->this$0:Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;

    iput-object p3, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$2;->val$pickText:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$2;->val$spinning:Landroid/view/View;

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0
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

    .line 184
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$2;->this$0:Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->access$402(Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;Z)Z

    .line 185
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$2;->val$spinning:Landroid/view/View;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 186
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$2;->val$pickText:Landroid/widget/TextView;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 187
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$2;->this$0:Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;

    invoke-static {p1}, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->access$300(Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;)Landroid/view/View;

    move-result-object p1

    const p3, -0x2ea7a7

    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 188
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$2;->this$0:Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;

    invoke-static {p1}, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->access$300(Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    .line 189
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$2;->val$pickText:Landroid/widget/TextView;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 190
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$2;->val$pickText:Landroid/widget/TextView;

    sget p2, Lcom/narvii/lib/R$string;->subcategory_pick_text_fail:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/media/online/audio/model/AssetListResponse;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 166
    iget p1, p2, Lcom/narvii/media/online/audio/model/AssetListResponse;->total:I

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$2;->this$0:Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;

    invoke-static {v1}, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->access$300(Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;)Landroid/view/View;

    move-result-object v1

    const v2, -0xb5b5b6

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 169
    iget-object v1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$2;->this$0:Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;

    invoke-static {v1}, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->access$300(Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 170
    iget-object v1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$2;->val$pickText:Landroid/widget/TextView;

    const v2, -0x727267

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 172
    :cond_0
    iget-object v1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$2;->this$0:Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;

    invoke-static {v1}, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->access$300(Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;)Landroid/view/View;

    move-result-object v1

    const v2, -0xfb1b47

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 173
    iget-object v1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$2;->this$0:Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;

    invoke-static {v1}, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->access$300(Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/View;->setClickable(Z)V

    .line 174
    iget-object v1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$2;->val$pickText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$2;->this$0:Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;

    invoke-virtual {v2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/narvii/lib/R$color;->account_text:I

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 176
    :goto_0
    iget-object v1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$2;->this$0:Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;

    invoke-static {v1, v0}, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;->access$402(Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;Z)Z

    .line 177
    iget-object v1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$2;->val$spinning:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 178
    iget-object v1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$2;->val$pickText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    iget-object v1, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$2;->val$pickText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$2;->this$0:Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker;

    sget v3, Lcom/narvii/lib/R$string;->subcategory_pick_text:I

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    invoke-virtual {v2, v3, p2}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

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

    .line 163
    check-cast p2, Lcom/narvii/media/online/audio/model/AssetListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/media/online/audio/OnlineAudioSubCategoryPicker$2;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/media/online/audio/model/AssetListResponse;)V

    return-void
.end method
