.class public final Lcom/narvii/master/home/profile/GlobalProfileMediaPickCallback;
.super Ljava/lang/Object;
.source "GlobalProfileMediaPickCallback.kt"

# interfaces
.implements Lcom/narvii/media/MediaPickCallback;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGlobalProfileMediaPickCallback.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GlobalProfileMediaPickCallback.kt\ncom/narvii/master/home/profile/GlobalProfileMediaPickCallback\n*L\n1#1,96:1\n*E\n"
.end annotation


# instance fields
.field private final EDIT_CODE:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x840

    .line 20
    iput v0, p0, Lcom/narvii/master/home/profile/GlobalProfileMediaPickCallback;->EDIT_CODE:I

    return-void
.end method


# virtual methods
.method public final doPost(Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity$UserBackgroundPost;Lcom/narvii/app/NVActivity;Ljava/lang/String;)V
    .locals 4

    const-string v0, "post"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "account"

    .line 49
    invoke-virtual {p2, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "activity.getService(\"account\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 50
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/user-profile/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p3

    invoke-virtual {p3}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p3

    .line 51
    new-instance v1, Lcom/narvii/feed/BackgroundPostHelper;

    invoke-direct {v1, p2}, Lcom/narvii/feed/BackgroundPostHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 52
    new-instance v2, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-direct {v2, p2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 53
    new-instance v3, Lcom/narvii/master/home/profile/GlobalProfileMediaPickCallback$doPost$$inlined$apply$lambda$1;

    invoke-direct {v3, v1}, Lcom/narvii/master/home/profile/GlobalProfileMediaPickCallback$doPost$$inlined$apply$lambda$1;-><init>(Lcom/narvii/feed/BackgroundPostHelper;)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 57
    new-instance v3, Lcom/narvii/master/home/profile/GlobalProfileMediaPickCallback$doPost$1;

    invoke-direct {v3, v2, v0, p2}, Lcom/narvii/master/home/profile/GlobalProfileMediaPickCallback$doPost$1;-><init>(Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/account/AccountService;Lcom/narvii/app/NVActivity;)V

    invoke-virtual {v1, v3}, Lcom/narvii/post/PostHelper;->setPostListener(Lcom/narvii/post/PostListener;)V

    .line 94
    const-class p2, Lcom/narvii/model/api/UserResponse;

    invoke-virtual {v1, p1, p3, p2}, Lcom/narvii/post/PostHelper;->startPost(Lcom/narvii/post/PostObject;Lcom/narvii/util/http/ApiRequest;Ljava/lang/Class;)V

    return-void
.end method

.method public onPick(Ljava/util/HashMap;Lcom/narvii/app/NVActivity;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/narvii/app/NVActivity;",
            "Z)V"
        }
    .end annotation

    if-eqz p2, :cond_8

    .line 23
    invoke-virtual {p2}, Lcom/narvii/app/NVActivity;->isDestoryed()Z

    move-result p3

    if-eqz p3, :cond_0

    goto/16 :goto_2

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p3, "mediaList"

    .line 29
    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    const-class v0, Lcom/narvii/model/Media;

    invoke-static {p3, v0}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p3

    const-string v0, "user"

    .line 30
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-class v2, Lcom/narvii/model/User;

    invoke-static {v1, v2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/User;

    const-string v2, "type"

    .line 31
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    const/4 v2, 0x1

    if-nez p1, :cond_2

    goto :goto_0

    .line 32
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_4

    if-eqz p3, :cond_3

    .line 33
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3

    const/4 p1, 0x0

    .line 34
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Media;

    iget-object p1, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    iput-object p1, v1, Lcom/narvii/model/User;->icon:Ljava/lang/String;

    .line 36
    :cond_3
    sget-object p1, Lcom/narvii/master/home/profile/EditGlobalAvatarActivity;->Companion:Lcom/narvii/master/home/profile/EditGlobalAvatarActivity$Companion;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2, v1}, Lcom/narvii/master/home/profile/EditGlobalAvatarActivity$Companion;->intent(Landroid/content/Context;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object p1

    iget p3, p0, Lcom/narvii/master/home/profile/GlobalProfileMediaPickCallback;->EDIT_CODE:I

    invoke-virtual {p2, p1, p3}, Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    :cond_4
    :goto_0
    const/4 v2, 0x2

    if-nez p1, :cond_5

    goto :goto_2

    .line 37
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v2, :cond_8

    if-eqz p3, :cond_7

    .line 38
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_6

    goto :goto_1

    .line 43
    :cond_6
    sget-object p1, Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity;->Companion:Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity$Companion;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2, v1, p3}, Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity$Companion;->intent(Landroid/content/Context;Lcom/narvii/model/User;Ljava/util/List;)Landroid/content/Intent;

    move-result-object p1

    iget p3, p0, Lcom/narvii/master/home/profile/GlobalProfileMediaPickCallback;->EDIT_CODE:I

    invoke-virtual {p2, p1, p3}, Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    .line 39
    :cond_7
    :goto_1
    new-instance p1, Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity$UserBackgroundPost;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v1}, Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity$UserBackgroundPost;-><init>(Lcom/narvii/model/User;)V

    const/4 p3, 0x0

    .line 40
    invoke-virtual {p1, p3}, Lcom/narvii/feed/BackgroundPost;->setBackgroundMediaList(Ljava/util/List;)V

    .line 41
    invoke-virtual {v1}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object p3

    const-string v0, "user.id()"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/master/home/profile/GlobalProfileMediaPickCallback;->doPost(Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity$UserBackgroundPost;Lcom/narvii/app/NVActivity;Ljava/lang/String;)V

    :cond_8
    :goto_2
    return-void
.end method
