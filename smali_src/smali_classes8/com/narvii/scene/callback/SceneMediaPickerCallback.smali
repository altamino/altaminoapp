.class public final Lcom/narvii/scene/callback/SceneMediaPickerCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/media/MediaPickCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static synthetic a(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/scene/callback/SceneMediaPickerCallback;->onPick$lambda$1$lambda$0(Landroid/view/View;)V

    return-void
.end method

.method private final getDraftIntermediaPath(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/io/File;

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string p1, "/scene_intermediate_file/"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 26
    move-result p1

    .line 27
    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 32
    :cond_0
    return-object v0
.end method

.method private static final onPick$lambda$1$lambda$0(Landroid/view/View;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public onPick(Ljava/util/HashMap;Lcom/narvii/app/NVActivity;Z)V
    .locals 10
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
    if-nez p2, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    if-nez p1, :cond_1

    .line 6
    return-void

    .line 7
    .line 8
    :cond_1
    const-string v0, "mediaList"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Ljava/lang/String;

    .line 15
    .line 16
    const-class v1, Lcom/narvii/model/Media;

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    const-string/jumbo v1, "templateConfig"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    check-cast v1, Ljava/lang/String;

    .line 30
    .line 31
    const-class v2, Lcom/narvii/scene/model/TemplateConfig;

    .line 32
    .line 33
    .line 34
    invoke-static {v1, v2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    check-cast v1, Lcom/narvii/scene/model/TemplateConfig;

    .line 38
    .line 39
    const-string v2, "sceneDraftPath"

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    move-result-object v2

    .line 44
    .line 45
    const-string v3, "null cannot be cast to non-null type kotlin.String"

    .line 46
    .line 47
    .line 48
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    move-object v9, v2

    .line 50
    .line 51
    check-cast v9, Ljava/lang/String;

    .line 52
    .line 53
    const-string v2, "sceneInfo"

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    check-cast p1, Ljava/lang/String;

    .line 60
    .line 61
    const-class v2, Lcom/narvii/scene/model/SceneInfo;

    .line 62
    .line 63
    .line 64
    invoke-static {p1, v2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 65
    move-result-object p1

    .line 66
    move-object v7, p1

    .line 67
    .line 68
    check-cast v7, Lcom/narvii/scene/model/SceneInfo;

    .line 69
    .line 70
    if-eqz v0, :cond_3

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 74
    move-result p1

    .line 75
    .line 76
    iget v2, v1, Lcom/narvii/scene/model/TemplateConfig;->minInputCount:I

    .line 77
    .line 78
    if-lt p1, v2, :cond_3

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 82
    move-result p1

    .line 83
    .line 84
    iget v0, v1, Lcom/narvii/scene/model/TemplateConfig;->maxInputCount:I

    .line 85
    .line 86
    if-le p1, v0, :cond_2

    .line 87
    goto :goto_0

    .line 88
    .line 89
    :cond_2
    new-instance p1, Lcom/narvii/scene/template/SceneTemplateHelper;

    .line 90
    .line 91
    .line 92
    invoke-direct {p0, v9}, Lcom/narvii/scene/callback/SceneMediaPickerCallback;->getDraftIntermediaPath(Ljava/lang/String;)Ljava/io/File;

    .line 93
    move-result-object v0

    .line 94
    .line 95
    .line 96
    invoke-direct {p1, p2, v0}, Lcom/narvii/scene/template/SceneTemplateHelper;-><init>(Lcom/narvii/app/NVContext;Ljava/io/File;)V

    .line 97
    .line 98
    new-instance v0, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;

    .line 99
    move-object v4, v0

    .line 100
    move-object v5, p2

    .line 101
    move-object v6, p1

    .line 102
    move v8, p3

    .line 103
    .line 104
    .line 105
    invoke-direct/range {v4 .. v9}, Lcom/narvii/scene/callback/SceneMediaPickerCallback$onPick$2;-><init>(Lcom/narvii/app/NVActivity;Lcom/narvii/scene/template/SceneTemplateHelper;Lcom/narvii/scene/model/SceneInfo;ZLjava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v0}, Lcom/narvii/scene/template/SceneTemplateHelper;->setOnCompileListener(Lcom/narvii/scene/template/SceneTemplateHelper$OnCompileListener;)V

    .line 109
    return-void

    .line 110
    .line 111
    :cond_3
    :goto_0
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    .line 112
    .line 113
    .line 114
    invoke-direct {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 115
    .line 116
    sget p3, Lcom/narvii/mediaeditor/R$string;->choose_template_media_count_hint:I

    .line 117
    const/4 v0, 0x2

    .line 118
    .line 119
    new-array v0, v0, [Ljava/lang/Object;

    .line 120
    .line 121
    iget v2, v1, Lcom/narvii/scene/model/TemplateConfig;->minInputCount:I

    .line 122
    .line 123
    .line 124
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    move-result-object v2

    .line 126
    const/4 v3, 0x0

    .line 127
    .line 128
    aput-object v2, v0, v3

    .line 129
    .line 130
    iget v1, v1, Lcom/narvii/scene/model/TemplateConfig;->maxInputCount:I

    .line 131
    .line 132
    .line 133
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    move-result-object v1

    .line 135
    const/4 v2, 0x1

    .line 136
    .line 137
    aput-object v1, v0, v2

    .line 138
    .line 139
    .line 140
    invoke-virtual {p2, p3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 141
    move-result-object p2

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 145
    .line 146
    sget p2, Lcom/narvii/mediaeditor/R$string;->yes:I

    .line 147
    .line 148
    new-instance p3, Lcom/narvii/scene/callback/a;

    .line 149
    .line 150
    .line 151
    invoke-direct {p3}, Lcom/narvii/scene/callback/a;-><init>()V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1, p2, p3}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 158
    return-void
.end method
