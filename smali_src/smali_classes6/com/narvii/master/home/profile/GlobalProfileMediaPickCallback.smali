.class public final Lcom/narvii/master/home/profile/GlobalProfileMediaPickCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/media/MediaPickCallback;


# instance fields
.field private final EDIT_CODE:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    const/16 v0, 0x840

    .line 6
    .line 7
    iput v0, p0, Lcom/narvii/master/home/profile/GlobalProfileMediaPickCallback;->EDIT_CODE:I

    .line 8
    return-void
.end method

.method public static synthetic a(Lcom/narvii/feed/BackgroundPostHelper;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/master/home/profile/GlobalProfileMediaPickCallback;->doPost$lambda$1$lambda$0(Lcom/narvii/feed/BackgroundPostHelper;Landroid/content/DialogInterface;)V

    return-void
.end method

.method private static final doPost$lambda$1$lambda$0(Lcom/narvii/feed/BackgroundPostHelper;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    .line 2
    const-string p1, "$ph"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/post/PostHelper;->cancel()V

    .line 9
    return-void
.end method

.method public static safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(Lcom/narvii/app/NVActivity;Landroid/content/Intent;I)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/app/NVActivity;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # I

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public final doPost(Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity$UserBackgroundPost;Lcom/narvii/app/NVActivity;Ljava/lang/String;)V
    .locals 4
    .param p1    # Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity$UserBackgroundPost;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/app/NVActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "post"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "activity"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "userId"

    .line 13
    .line 14
    .line 15
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    const-string v0, "account"

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    const-string v1, "getService(...)"

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 29
    .line 30
    .line 31
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    const-string v3, "/user-profile/"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object p3

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, p3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 57
    move-result-object p3

    .line 58
    .line 59
    .line 60
    invoke-virtual {p3}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 61
    move-result-object p3

    .line 62
    .line 63
    new-instance v1, Lcom/narvii/feed/BackgroundPostHelper;

    .line 64
    .line 65
    .line 66
    invoke-direct {v1, p2}, Lcom/narvii/feed/BackgroundPostHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 67
    .line 68
    new-instance v2, Lcom/narvii/util/dialog/ProgressDialog;

    .line 69
    .line 70
    .line 71
    invoke-direct {v2, p2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 72
    .line 73
    new-instance v3, Lcom/narvii/master/home/profile/b0;

    .line 74
    .line 75
    .line 76
    invoke-direct {v3, v1}, Lcom/narvii/master/home/profile/b0;-><init>(Lcom/narvii/feed/BackgroundPostHelper;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 80
    .line 81
    new-instance v3, Lcom/narvii/master/home/profile/GlobalProfileMediaPickCallback$doPost$1;

    .line 82
    .line 83
    .line 84
    invoke-direct {v3, v2, v0, p2}, Lcom/narvii/master/home/profile/GlobalProfileMediaPickCallback$doPost$1;-><init>(Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/account/AccountService;Lcom/narvii/app/NVActivity;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, v3}, Lcom/narvii/post/PostHelper;->setPostListener(Lcom/narvii/post/PostListener;)V

    .line 88
    .line 89
    const-class p2, Lcom/narvii/model/api/UserResponse;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, p1, p3, p2}, Lcom/narvii/post/PostHelper;->startPost(Lcom/narvii/post/PostObject;Lcom/narvii/util/http/ApiRequest;Ljava/lang/Class;)V

    .line 93
    return-void
.end method

.method public onPick(Ljava/util/HashMap;Lcom/narvii/app/NVActivity;Z)V
    .locals 3
    .param p1    # Ljava/util/HashMap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/app/NVActivity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
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

    .line 1
    .line 2
    if-eqz p2, :cond_8

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2}, Lcom/narvii/app/NVActivity;->isDestoryed()Z

    .line 6
    move-result p3

    .line 7
    .line 8
    if-eqz p3, :cond_0

    .line 9
    .line 10
    goto/16 :goto_2

    .line 11
    .line 12
    :cond_0
    if-nez p1, :cond_1

    .line 13
    return-void

    .line 14
    .line 15
    :cond_1
    const-string p3, "mediaList"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    move-result-object p3

    .line 20
    .line 21
    check-cast p3, Ljava/lang/String;

    .line 22
    .line 23
    const-class v0, Lcom/narvii/model/Media;

    .line 24
    .line 25
    .line 26
    invoke-static {p3, v0}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 27
    move-result-object p3

    .line 28
    .line 29
    const-string v0, "user"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    check-cast v0, Ljava/lang/String;

    .line 36
    .line 37
    const-class v1, Lcom/narvii/model/User;

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    check-cast v0, Lcom/narvii/model/User;

    .line 44
    .line 45
    const-string v1, "type"

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    check-cast p1, Ljava/lang/Integer;

    .line 52
    .line 53
    if-nez p1, :cond_2

    .line 54
    goto :goto_0

    .line 55
    .line 56
    .line 57
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 58
    move-result v1

    .line 59
    const/4 v2, 0x1

    .line 60
    .line 61
    if-ne v1, v2, :cond_4

    .line 62
    .line 63
    if-eqz p3, :cond_3

    .line 64
    .line 65
    .line 66
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 67
    move-result p1

    .line 68
    .line 69
    if-lez p1, :cond_3

    .line 70
    const/4 p1, 0x0

    .line 71
    .line 72
    .line 73
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 74
    move-result-object p1

    .line 75
    .line 76
    check-cast p1, Lcom/narvii/model/Media;

    .line 77
    .line 78
    iget-object p1, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 79
    .line 80
    iput-object p1, v0, Lcom/narvii/model/User;->icon:Ljava/lang/String;

    .line 81
    .line 82
    :cond_3
    sget-object p1, Lcom/narvii/master/home/profile/EditGlobalAvatarActivity;->Companion:Lcom/narvii/master/home/profile/EditGlobalAvatarActivity$Companion;

    .line 83
    .line 84
    .line 85
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, p2, v0}, Lcom/narvii/master/home/profile/EditGlobalAvatarActivity$Companion;->intent(Landroid/content/Context;Lcom/narvii/model/User;)Landroid/content/Intent;

    .line 89
    move-result-object p1

    .line 90
    .line 91
    iget p3, p0, Lcom/narvii/master/home/profile/GlobalProfileMediaPickCallback;->EDIT_CODE:I

    .line 92
    .line 93
    .line 94
    invoke-static {p2, p1, p3}, Lcom/narvii/master/home/profile/GlobalProfileMediaPickCallback;->safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(Lcom/narvii/app/NVActivity;Landroid/content/Intent;I)V

    .line 95
    goto :goto_2

    .line 96
    .line 97
    :cond_4
    :goto_0
    if-nez p1, :cond_5

    .line 98
    goto :goto_2

    .line 99
    .line 100
    .line 101
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 102
    move-result p1

    .line 103
    const/4 v1, 0x2

    .line 104
    .line 105
    if-ne p1, v1, :cond_8

    .line 106
    .line 107
    if-eqz p3, :cond_7

    .line 108
    .line 109
    .line 110
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 111
    move-result p1

    .line 112
    .line 113
    if-nez p1, :cond_6

    .line 114
    goto :goto_1

    .line 115
    .line 116
    :cond_6
    sget-object p1, Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity;->Companion:Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity$Companion;

    .line 117
    .line 118
    .line 119
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, p2, v0, p3}, Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity$Companion;->intent(Landroid/content/Context;Lcom/narvii/model/User;Ljava/util/List;)Landroid/content/Intent;

    .line 123
    move-result-object p1

    .line 124
    .line 125
    iget p3, p0, Lcom/narvii/master/home/profile/GlobalProfileMediaPickCallback;->EDIT_CODE:I

    .line 126
    .line 127
    .line 128
    invoke-static {p2, p1, p3}, Lcom/narvii/master/home/profile/GlobalProfileMediaPickCallback;->safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(Lcom/narvii/app/NVActivity;Landroid/content/Intent;I)V

    .line 129
    goto :goto_2

    .line 130
    .line 131
    :cond_7
    :goto_1
    new-instance p1, Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity$UserBackgroundPost;

    .line 132
    .line 133
    .line 134
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    invoke-direct {p1, v0}, Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity$UserBackgroundPost;-><init>(Lcom/narvii/model/User;)V

    .line 138
    const/4 p3, 0x0

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1, p3}, Lcom/narvii/feed/BackgroundPost;->setBackgroundMediaList(Ljava/util/List;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    .line 145
    move-result-object p3

    .line 146
    .line 147
    const-string v0, "id(...)"

    .line 148
    .line 149
    .line 150
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/master/home/profile/GlobalProfileMediaPickCallback;->doPost(Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity$UserBackgroundPost;Lcom/narvii/app/NVActivity;Ljava/lang/String;)V

    .line 154
    :cond_8
    :goto_2
    return-void
.end method
