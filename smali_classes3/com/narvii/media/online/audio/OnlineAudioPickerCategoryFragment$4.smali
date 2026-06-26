.class Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment$4;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "OnlineAudioPickerCategoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;->sendRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/media/online/audio/model/QuerySoundSectionResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;


# direct methods
.method constructor <init>(Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;Ljava/lang/Class;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment$4;->this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;

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

    .line 185
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment$4;->this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;->access$502(Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 186
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment$4;->this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;

    invoke-static {p1}, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;->access$400(Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/media/online/audio/model/QuerySoundSectionResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 167
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment$4;->this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;

    iget-object p2, p2, Lcom/narvii/media/online/audio/model/QuerySoundSectionResponse;->sectionList:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;->access$202(Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;Ljava/util/List;)Ljava/util/List;

    .line 168
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment$4;->this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;

    const-string p2, "targetOnlineAudioTabName"

    invoke-virtual {p1, p2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 170
    iget-object p2, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment$4;->this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;

    invoke-static {p2}, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;->access$200(Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 171
    :goto_0
    iget-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment$4;->this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;

    invoke-static {v0}, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;->access$200(Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment$4;->this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;

    invoke-static {v0}, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;->access$200(Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/media/online/audio/model/AssetSection;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, v0, Lcom/narvii/media/online/audio/model/AssetSection;->name:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment$4;->this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;

    invoke-static {p1, p2}, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;->access$302(Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;I)I

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 180
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment$4;->this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;

    invoke-static {p1}, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;->access$400(Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;)V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 164
    check-cast p2, Lcom/narvii/media/online/audio/model/QuerySoundSectionResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment$4;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/media/online/audio/model/QuerySoundSectionResponse;)V

    return-void
.end method
