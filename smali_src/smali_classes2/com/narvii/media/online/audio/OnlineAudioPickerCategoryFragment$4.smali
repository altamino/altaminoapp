.class Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment$4;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment$4;->this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 6
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

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment$4;->this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;

    .line 3
    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    .line 7
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string p3, ""

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object p2

    .line 20
    .line 21
    .line 22
    invoke-static {p1, p2}, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;->q(Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;Ljava/lang/String;)V

    .line 23
    .line 24
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment$4;->this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;->t(Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;)V

    .line 28
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/media/online/audio/model/QuerySoundSectionResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment$4;->this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;

    .line 2
    iget-object p2, p2, Lcom/narvii/media/online/audio/model/QuerySoundSectionResponse;->sectionList:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;->o(Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;Ljava/util/List;)V

    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment$4;->this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;

    const-string p2, "targetOnlineAudioTabName"

    .line 3
    invoke-virtual {p1, p2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment$4;->this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;

    .line 4
    invoke-static {p2}, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;->n(Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment$4;->this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;

    .line 5
    invoke-static {v0}, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;->n(Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    iget-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment$4;->this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;

    .line 6
    invoke-static {v0}, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;->n(Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/media/online/audio/model/AssetSection;

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, v0, Lcom/narvii/media/online/audio/model/AssetSection;->name:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment$4;->this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;

    .line 8
    invoke-static {p1, p2}, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;->p(Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;I)V

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment$4;->this$0:Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;

    .line 9
    invoke-static {p1}, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;->t(Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;)V

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
    check-cast p2, Lcom/narvii/media/online/audio/model/QuerySoundSectionResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment$4;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/media/online/audio/model/QuerySoundSectionResponse;)V

    return-void
.end method
