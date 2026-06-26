.class public Lcom/narvii/flag/resolve/FlagModeHelper;
.super Ljava/lang/Object;
.source "FlagModeHelper.java"


# static fields
.field public static final FLAG_RESOLVE_BACK:Ljava/lang/String; = "template_content"

.field public static final FLAG_RESOLVE_REQUEST:I = 0x64

.field private static final KEY_FLAG_FILTER:Ljava/lang/String; = "flag_filter"

.field private static final KEY_FLAG_ID:Ljava/lang/String; = "id"

.field private static final KEY_FLAG_ITEM:Ljava/lang/String; = "flag_item"

.field private static final KEY_FLAG_ITEMS:Ljava/lang/String; = "flag_items"

.field private static final KEY_FLAG_MODE:Ljava/lang/String; = "flag_mode"

.field private static final KEY_FLAG_SIZE:Ljava/lang/String; = "flag_size"

.field private static final KEY_FLAG_STOP_TIME:Ljava/lang/String; = "stoptime"

.field public static final REQ_CHAT:I = 0x12e

.field public static final REQ_TEMPLE:I = 0x12d


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/util/List;Ljava/lang/String;)Lcom/narvii/model/QuizQuestion;
    .locals 0

    .line 44
    invoke-static {p0, p1}, Lcom/narvii/flag/resolve/FlagModeHelper;->findQuizQuestionById(Ljava/util/List;Ljava/lang/String;)Lcom/narvii/model/QuizQuestion;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Landroid/content/Intent;Lcom/narvii/flag/model/Flag;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    .line 44
    invoke-static/range {p0 .. p5}, Lcom/narvii/flag/resolve/FlagModeHelper;->generateFlagIntent(Landroid/content/Intent;Lcom/narvii/flag/model/Flag;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static attachFlagMode(Landroid/view/View;Lcom/narvii/app/NVContext;)Lcom/narvii/flag/resolve/FlagResolveBar;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const v0, 0x7f090017

    .line 67
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    const v0, 0x7f090678

    .line 69
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    .line 71
    :cond_1
    invoke-static {v0, p1}, Lcom/narvii/flag/resolve/FlagModeHelper;->attachFlagModeForCertainView(Landroid/view/ViewGroup;Lcom/narvii/app/NVContext;)Lcom/narvii/flag/resolve/FlagResolveBar;

    move-result-object p0

    return-object p0
.end method

.method public static attachFlagModeForCertainView(Landroid/view/ViewGroup;Lcom/narvii/app/NVContext;)Lcom/narvii/flag/resolve/FlagResolveBar;
    .locals 9

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 76
    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/narvii/app/NVFragment;

    const/4 v2, 0x1

    const-string v3, "flag_mode"

    invoke-static {v1, v3, v2}, Lcom/narvii/util/ParamUtils;->getBooleanParam(Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "flag_item"

    if-eqz v3, :cond_3

    .line 77
    invoke-static {v1, v4}, Lcom/narvii/util/ParamUtils;->getStringParam(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/narvii/flag/model/Flag;

    invoke-static {v0, v2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/narvii/flag/model/Flag;

    const-string v0, "flag_items"

    .line 78
    invoke-static {v1, v0}, Lcom/narvii/util/ParamUtils;->getStringParam(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/narvii/flag/model/Flag;

    invoke-static {v0, v2}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v5

    if-nez v5, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 79
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    const-string v2, "flag_size"

    invoke-static {v1, v2, v0}, Lcom/narvii/util/ParamUtils;->getIntParam(Landroid/support/v4/app/Fragment;Ljava/lang/String;I)I

    move-result v6

    const-string v0, "flag_filter"

    .line 80
    invoke-static {v1, v0}, Lcom/narvii/util/ParamUtils;->getStringParam(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "stoptime"

    .line 81
    invoke-static {v1, v0}, Lcom/narvii/util/ParamUtils;->getStringParam(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 82
    new-instance v0, Lcom/narvii/flag/resolve/FlagResolveBar;

    move-object v2, v0

    move-object v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/narvii/flag/resolve/FlagResolveBar;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/flag/model/Flag;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v1, 0x102000a

    .line 84
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 86
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 87
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070151

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 88
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070155

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 90
    :cond_2
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f010045

    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    .line 92
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-object v0

    .line 95
    :cond_3
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/narvii/util/DateTimeFormatter;->getInstance(Landroid/content/Context;)Lcom/narvii/util/DateTimeFormatter;

    move-result-object v3

    .line 96
    invoke-static {v1, v4}, Lcom/narvii/util/ParamUtils;->getStringParam(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/narvii/flag/model/Flag;

    invoke-static {v4, v5}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/flag/model/Flag;

    .line 97
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f0f06f1

    invoke-virtual {v1, v6}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v4, Lcom/narvii/flag/model/Flag;->lastResolvedTime:Ljava/util/Date;

    invoke-virtual {v3, v1}, Lcom/narvii/util/DateTimeFormatter;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v3, 0x7f0b0265

    invoke-virtual {p1, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p1, 0x7f090971

    .line 99
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_1
    return-object v0
.end method

.method private static findQuizQuestionById(Ljava/util/List;Ljava/lang/String;)Lcom/narvii/model/QuizQuestion;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/QuizQuestion;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/narvii/model/QuizQuestion;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 254
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 255
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/QuizQuestion;

    .line 256
    invoke-virtual {v1}, Lcom/narvii/model/QuizQuestion;->id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    :goto_0
    return-object v0
.end method

.method private static generateFlagIntent(Landroid/content/Intent;Lcom/narvii/flag/model/Flag;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Lcom/narvii/flag/model/Flag;",
            "Ljava/util/List<",
            "Lcom/narvii/flag/model/Flag;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 242
    :cond_0
    iget-object v0, p1, Lcom/narvii/flag/model/Flag;->objectId:Ljava/lang/String;

    const-string v1, "id"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "flag_item"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p4, :cond_2

    const-string p1, "resolved"

    .line 244
    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    const-string v0, "flag_mode"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 245
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "flag_items"

    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "flag_size"

    .line 246
    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "flag_filter"

    .line 247
    invoke-virtual {p0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "stoptime"

    .line 248
    invoke-virtual {p0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public static handleActivityResult(Lcom/narvii/app/NVContext;Lcom/narvii/flag/resolve/FlagResolveBar;IILandroid/content/Intent;Lcom/narvii/model/NVObject;I)V
    .locals 1

    const/16 v0, 0x12d

    if-ne p2, v0, :cond_1

    const/4 p2, -0x1

    if-ne p3, p2, :cond_0

    const-string p1, "template_content"

    .line 180
    invoke-virtual {p4, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 181
    new-instance p2, Lcom/narvii/chat/RequestChatUserHelper;

    invoke-direct {p2, p0}, Lcom/narvii/chat/RequestChatUserHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 182
    new-instance p3, Lcom/narvii/flag/resolve/FlagModeHelper$1;

    invoke-direct {p3, p0}, Lcom/narvii/flag/resolve/FlagModeHelper$1;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {p2, p5, p6, p1, p3}, Lcom/narvii/chat/RequestChatUserHelper;->request(Lcom/narvii/model/NVObject;ILjava/lang/String;Lcom/narvii/util/Callback;)V

    goto :goto_0

    :cond_0
    if-nez p3, :cond_2

    if-eqz p1, :cond_2

    .line 191
    invoke-virtual {p1}, Lcom/narvii/flag/resolve/FlagResolveBar;->loadNextFlag()V

    goto :goto_0

    :cond_1
    const/16 p0, 0x12e

    if-ne p2, p0, :cond_2

    if-nez p3, :cond_2

    if-eqz p1, :cond_2

    .line 197
    invoke-virtual {p1}, Lcom/narvii/flag/resolve/FlagResolveBar;->loadNextFlag()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static launchFlagMode(Lcom/narvii/app/NVContext;Lcom/narvii/flag/model/Flag;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Lcom/narvii/flag/model/Flag;",
            "Ljava/util/List<",
            "Lcom/narvii/flag/model/Flag;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 116
    invoke-static/range {v0 .. v6}, Lcom/narvii/flag/resolve/FlagModeHelper;->launchFlagMode(Lcom/narvii/app/NVContext;Lcom/narvii/flag/model/Flag;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Lcom/narvii/app/NVActivity;)V

    return-void
.end method

.method public static launchFlagMode(Lcom/narvii/app/NVContext;Lcom/narvii/flag/model/Flag;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Lcom/narvii/app/NVActivity;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Lcom/narvii/flag/model/Flag;",
            "Ljava/util/List<",
            "Lcom/narvii/flag/model/Flag;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/narvii/app/NVActivity;",
            ")V"
        }
    .end annotation

    .line 123
    iget v0, p1, Lcom/narvii/flag/model/Flag;->objectType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 124
    const-class v0, Lcom/narvii/flag/resolve/BlogDetailFlagModeFragment;

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 126
    const-class v0, Lcom/narvii/flag/resolve/ItemDetailFlagModeFragment;

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 128
    const-class v0, Lcom/narvii/flag/resolve/CommentResolveFragment;

    goto :goto_0

    :cond_2
    const/4 v2, 0x7

    if-ne v0, v2, :cond_3

    .line 130
    const-class v0, Lcom/narvii/flag/resolve/ChatMessageDetailFlagModeFragment;

    goto :goto_0

    :cond_3
    if-nez v0, :cond_4

    .line 132
    const-class v0, Lcom/narvii/flag/resolve/UserProfileFlagModeFragment;

    goto :goto_0

    :cond_4
    const/16 v2, 0x6d

    if-ne v0, v2, :cond_5

    .line 134
    const-class v0, Lcom/narvii/sharedfolder/SharedPhotoDetailFlagModeFragment;

    goto :goto_0

    :cond_5
    const/16 v2, 0xc

    if-ne v0, v2, :cond_6

    .line 136
    const-class v0, Lcom/narvii/flag/resolve/ThreadDetailFlagModeFragment;

    goto :goto_0

    :cond_6
    const/16 v2, 0x17

    if-ne v0, v2, :cond_7

    .line 137
    iget v0, p1, Lcom/narvii/flag/model/Flag;->parentType:I

    if-ne v0, v1, :cond_7

    .line 139
    invoke-static/range {p0 .. p5}, Lcom/narvii/flag/resolve/FlagModeHelper;->launchQuizQuestion(Lcom/narvii/app/NVContext;Lcom/narvii/flag/model/Flag;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_7
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_8

    .line 143
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    const-string v0, "Source"

    const-string v3, "Flag Center"

    .line 144
    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "showListEntry"

    .line 145
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 146
    invoke-static/range {v2 .. v7}, Lcom/narvii/flag/resolve/FlagModeHelper;->generateFlagIntent(Landroid/content/Intent;Lcom/narvii/flag/model/Flag;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 148
    :try_start_0
    invoke-interface {p0, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    .line 149
    instance-of p1, p0, Lcom/narvii/app/NVFragment;

    if-eqz p1, :cond_8

    .line 150
    check-cast p0, Lcom/narvii/app/NVFragment;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p0

    const p1, 0x7f01003c

    const p2, 0x7f010041

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    :cond_8
    :goto_1
    if-eqz p6, :cond_9

    .line 156
    invoke-virtual {p6}, Lcom/narvii/app/NVActivity;->finish()V

    :cond_9
    return-void
.end method

.method private static launchQuizQuestion(Lcom/narvii/app/NVContext;Lcom/narvii/flag/model/Flag;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Lcom/narvii/flag/model/Flag;",
            "Ljava/util/List<",
            "Lcom/narvii/flag/model/Flag;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 209
    :cond_0
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/narvii/model/api/BlogResponse;

    invoke-direct {v0, v1, v2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 210
    new-instance v1, Lcom/narvii/flag/resolve/FlagModeHelper$2;

    move-object v3, v1

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    move-object v8, p5

    move-object v9, p0

    invoke-direct/range {v3 .. v9}, Lcom/narvii/flag/resolve/FlagModeHelper$2;-><init>(Lcom/narvii/flag/model/Flag;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Lcom/narvii/app/NVContext;)V

    iput-object v1, v0, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 231
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    const-string p2, "api"

    .line 232
    invoke-interface {p0, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/narvii/util/http/ApiService;

    .line 233
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "/blog/"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/narvii/flag/model/Flag;->parentId:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    iget-object p2, v0, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method public static saveInstanceStats(Lcom/narvii/app/NVContext;Landroid/os/Bundle;)V
    .locals 2

    .line 169
    check-cast p0, Lcom/narvii/app/NVFragment;

    const-string v0, "flag_item"

    invoke-static {p0, v0}, Lcom/narvii/util/ParamUtils;->getStringParam(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "flag_items"

    .line 170
    invoke-static {p0, v0}, Lcom/narvii/util/ParamUtils;->getStringParam(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "flag_size"

    const/4 v1, 0x0

    .line 171
    invoke-static {p0, v0, v1}, Lcom/narvii/util/ParamUtils;->getIntParam(Landroid/support/v4/app/Fragment;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "flag_filter"

    .line 172
    invoke-static {p0, v0}, Lcom/narvii/util/ParamUtils;->getStringParam(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "stoptime"

    .line 173
    invoke-static {p0, v0}, Lcom/narvii/util/ParamUtils;->getStringParam(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static showNotAvailableDialog(Landroid/content/Context;I)V
    .locals 2

    .line 161
    new-instance v0, Lcom/narvii/util/dialog/AlertDialog;

    invoke-direct {v0, p0}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0c51

    .line 162
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 163
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const p1, 0x104000a

    .line 164
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x4

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lcom/narvii/util/dialog/AlertDialog;->addButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 165
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method
