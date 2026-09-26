.class public final Lcom/narvii/scene/poll/ScenePollPostFragment;
.super Lcom/narvii/scene/SceneBasePostFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Lcom/narvii/media/MediaPickerFragment$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/scene/poll/ScenePollPostFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScenePollPostFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScenePollPostFragment.kt\ncom/narvii/scene/poll/ScenePollPostFragment\n+ 2 NVExtension.kt\ncom/narvii/util/kotlin/NVExtensionKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 6 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,390:1\n33#2,14:391\n1855#3,2:405\n2976#3,5:407\n1549#3:412\n1620#3,3:413\n766#3:416\n857#3,2:417\n1655#3,8:420\n1549#3:428\n1620#3,3:429\n2624#3,3:432\n1549#3:435\n1620#3,3:436\n1855#3,2:439\n1855#3,2:441\n1855#3,2:450\n1864#3,3:452\n1855#3,2:455\n1#4:419\n526#5:443\n511#5,6:444\n1099#6,3:457\n*S KotlinDebug\n*F\n+ 1 ScenePollPostFragment.kt\ncom/narvii/scene/poll/ScenePollPostFragment\n*L\n92#1:391,14\n121#1:405,2\n187#1:407,5\n194#1:412\n194#1:413,3\n194#1:416\n194#1:417,2\n198#1:420,8\n246#1:428\n246#1:429,3\n257#1:432,3\n266#1:435\n266#1:436,3\n275#1:439,2\n290#1:441,2\n298#1:450,2\n358#1:452,3\n381#1:455,2\n297#1:443\n297#1:444,6\n114#1:457,3\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/narvii/scene/poll/ScenePollPostFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MAX_OPTION_COUNT:I = 0x5

.field public static final MAX_OPTION_INPUT_LENGTH:I = 0x1e

.field public static final MIN_OPTION_COUNT:I = 0x2


# instance fields
.field private final binding$delegate:Lkotlin/properties/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private optionIndexCount:I

.field private final optionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lw7/u<",
            "Lcom/narvii/model/PollOption;",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private sceneInfo:Lcom/narvii/scene/model/SceneInfo;

.field private final textWatcher:Lcom/narvii/scene/poll/ScenePollPostFragment$textWatcher$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 4
    .line 5
    new-instance v1, Lkotlin/jvm/internal/g0;

    .line 6
    .line 7
    const-string v2, "binding"

    .line 8
    .line 9
    const-string v3, "getBinding()Lcom/narvii/mediaeditor/databinding/FragmentScenePollPostBinding;"

    .line 10
    .line 11
    const-class v4, Lcom/narvii/scene/poll/ScenePollPostFragment;

    .line 12
    const/4 v5, 0x0

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/g0;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, Lkotlin/jvm/internal/q0;->g(Lkotlin/jvm/internal/f0;)Lkotlin/reflect/KProperty1;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    aput-object v1, v0, v5

    .line 22
    .line 23
    sput-object v0, Lcom/narvii/scene/poll/ScenePollPostFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 24
    .line 25
    new-instance v0, Lcom/narvii/scene/poll/ScenePollPostFragment$Companion;

    .line 26
    const/4 v1, 0x0

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v1}, Lcom/narvii/scene/poll/ScenePollPostFragment$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    .line 30
    .line 31
    sput-object v0, Lcom/narvii/scene/poll/ScenePollPostFragment;->Companion:Lcom/narvii/scene/poll/ScenePollPostFragment$Companion;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/scene/SceneBasePostFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->optionList:Ljava/util/List;

    .line 11
    .line 12
    sget-object v0, Lcom/narvii/scene/poll/ScenePollPostFragment$binding$2;->INSTANCE:Lcom/narvii/scene/poll/ScenePollPostFragment$binding$2;

    .line 13
    .line 14
    .line 15
    invoke-static {p0, v0}, Lcom/narvii/util/FragmentExtensionsKt;->viewBinding(Landroidx/fragment/app/Fragment;Le8/l;)Lkotlin/properties/d;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    iput-object v0, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->binding$delegate:Lkotlin/properties/d;

    .line 19
    .line 20
    new-instance v0, Lcom/narvii/scene/poll/ScenePollPostFragment$textWatcher$1;

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, p0}, Lcom/narvii/scene/poll/ScenePollPostFragment$textWatcher$1;-><init>(Lcom/narvii/scene/poll/ScenePollPostFragment;)V

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->textWatcher:Lcom/narvii/scene/poll/ScenePollPostFragment$textWatcher$1;

    .line 26
    return-void
.end method

.method public static final synthetic access$updatePollContent(Lcom/narvii/scene/poll/ScenePollPostFragment;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/scene/poll/ScenePollPostFragment;->updatePollContent()V

    .line 4
    return-void
.end method

.method private final addOption(Lcom/narvii/model/PollOption;)V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->optionList:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x5

    .line 8
    .line 9
    if-lt v0, v1, :cond_0

    .line 10
    return-void

    .line 11
    .line 12
    :cond_0
    iget v0, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->optionIndexCount:I

    .line 13
    const/4 v1, 0x1

    .line 14
    add-int/2addr v0, v1

    .line 15
    .line 16
    iput v0, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->optionIndexCount:I

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    sget v2, Lcom/narvii/mediaeditor/R$layout;->scene_poll_option_layout:I

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/narvii/scene/poll/ScenePollPostFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentScenePollPostBinding;

    .line 26
    move-result-object v3

    .line 27
    .line 28
    iget-object v3, v3, Lcom/narvii/mediaeditor/databinding/FragmentScenePollPostBinding;->root:Landroid/widget/LinearLayout;

    .line 29
    const/4 v4, 0x0

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    sget v2, Lcom/narvii/mediaeditor/R$id;->option_image_rl:I

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    move-result-object v2

    .line 40
    .line 41
    sget v3, Lcom/narvii/mediaeditor/R$id;->poll_option_parent:I

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v3, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    .line 49
    sget v2, Lcom/narvii/mediaeditor/R$id;->option_et:I

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    move-result-object v2

    .line 54
    .line 55
    check-cast v2, Landroid/widget/EditText;

    .line 56
    .line 57
    sget v5, Lcom/narvii/mediaeditor/R$string;->poll_option_index_n:I

    .line 58
    .line 59
    new-array v1, v1, [Ljava/lang/Object;

    .line 60
    .line 61
    iget v6, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->optionIndexCount:I

    .line 62
    .line 63
    .line 64
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    move-result-object v6

    .line 66
    .line 67
    aput-object v6, v1, v4

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v5, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 71
    move-result-object v1

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 75
    .line 76
    iget-object v1, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->textWatcher:Lcom/narvii/scene/poll/ScenePollPostFragment$textWatcher$1;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2, v4}, Landroid/view/View;->setSaveEnabled(Z)V

    .line 86
    .line 87
    sget v1, Lcom/narvii/mediaeditor/R$id;->option_delete_iv:I

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 91
    move-result-object v1

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v3, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    .line 99
    .line 100
    invoke-direct {p0}, Lcom/narvii/scene/poll/ScenePollPostFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentScenePollPostBinding;

    .line 101
    move-result-object v1

    .line 102
    .line 103
    iget-object v1, v1, Lcom/narvii/mediaeditor/databinding/FragmentScenePollPostBinding;->optionsContainer:Landroid/widget/LinearLayout;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 107
    .line 108
    if-eqz p1, :cond_1

    .line 109
    .line 110
    .line 111
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 112
    move-result-object p1

    .line 113
    .line 114
    const-class v1, Lcom/narvii/model/PollOption;

    .line 115
    .line 116
    .line 117
    invoke-static {p1, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 118
    move-result-object p1

    .line 119
    .line 120
    check-cast p1, Lcom/narvii/model/PollOption;

    .line 121
    .line 122
    iget-object v1, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->optionList:Ljava/util/List;

    .line 123
    .line 124
    new-instance v3, Lw7/u;

    .line 125
    .line 126
    .line 127
    invoke-direct {v3, p1, v0}, Lw7/u;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    .line 132
    iget-object v1, p1, Lcom/narvii/model/PollOption;->title:Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    .line 137
    iget-object p1, p1, Lcom/narvii/model/PollOption;->mediaList:Ljava/util/List;

    .line 138
    .line 139
    .line 140
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    invoke-direct {p0, p1, v0}, Lcom/narvii/scene/poll/ScenePollPostFragment;->updateOptionImage(Ljava/util/List;Landroid/view/View;)V

    .line 144
    goto :goto_0

    .line 145
    .line 146
    :cond_1
    iget-object p1, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->optionList:Ljava/util/List;

    .line 147
    .line 148
    new-instance v1, Lw7/u;

    .line 149
    .line 150
    new-instance v2, Lcom/narvii/model/PollOption;

    .line 151
    .line 152
    .line 153
    invoke-direct {v2}, Lcom/narvii/model/PollOption;-><init>()V

    .line 154
    .line 155
    .line 156
    invoke-direct {v1, v2, v0}, Lw7/u;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    :goto_0
    invoke-direct {p0}, Lcom/narvii/scene/poll/ScenePollPostFragment;->updateAddAndDeleteIcon()V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->invalidateOptionsMenu()V

    .line 166
    return-void
.end method

.method static synthetic addOption$default(Lcom/narvii/scene/poll/ScenePollPostFragment;Lcom/narvii/model/PollOption;ILjava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p2, p2, 0x1

    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    const/4 p1, 0x0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/scene/poll/ScenePollPostFragment;->addOption(Lcom/narvii/model/PollOption;)V

    .line 9
    return-void
.end method

.method private static final doSubmit$lambda$12(Ljava/lang/Integer;Lcom/narvii/scene/poll/ScenePollPostFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    const-string/jumbo p2, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    sget p2, Lcom/narvii/mediaeditor/R$string;->input_poll_title:I

    .line 9
    .line 10
    if-nez p0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 15
    move-result p0

    .line 16
    .line 17
    if-ne p0, p2, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-direct {p1}, Lcom/narvii/scene/poll/ScenePollPostFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentScenePollPostBinding;

    .line 21
    move-result-object p0

    .line 22
    .line 23
    iget-object p0, p0, Lcom/narvii/mediaeditor/databinding/FragmentScenePollPostBinding;->title:Landroid/widget/EditText;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 27
    .line 28
    new-instance p0, Lcom/narvii/scene/poll/d;

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, p1}, Lcom/narvii/scene/poll/d;-><init>(Lcom/narvii/scene/poll/ScenePollPostFragment;)V

    .line 32
    .line 33
    const-wide/16 p1, 0x32

    .line 34
    .line 35
    .line 36
    invoke-static {p0, p1, p2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 37
    :cond_1
    :goto_0
    return-void
.end method

.method private static final doSubmit$lambda$12$lambda$11(Lcom/narvii/scene/poll/ScenePollPostFragment;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/scene/poll/ScenePollPostFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentScenePollPostBinding;

    .line 10
    move-result-object p0

    .line 11
    .line 12
    iget-object p0, p0, Lcom/narvii/mediaeditor/databinding/FragmentScenePollPostBinding;->title:Landroid/widget/EditText;

    .line 13
    .line 14
    .line 15
    invoke-static {p0}, Lcom/narvii/util/SoftKeyboard;->showSoftKeyboard(Landroid/widget/EditText;)V

    .line 16
    return-void
.end method

.method private final findIndexForOptionView(Landroid/view/View;)I
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->optionList:Ljava/util/List;

    .line 3
    .line 4
    check-cast v0, Ljava/lang/Iterable;

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v2

    .line 14
    .line 15
    if-eqz v2, :cond_2

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v2

    .line 20
    .line 21
    add-int/lit8 v3, v1, 0x1

    .line 22
    .line 23
    if-gez v1, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lkotlin/collections/t;->w()V

    .line 27
    .line 28
    :cond_0
    check-cast v2, Lw7/u;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Lw7/u;->d()Ljava/lang/Object;

    .line 32
    move-result-object v2

    .line 33
    .line 34
    .line 35
    invoke-static {v2, p1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    move-result v2

    .line 37
    .line 38
    if-eqz v2, :cond_1

    .line 39
    return v1

    .line 40
    :cond_1
    move v1, v3

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    const/4 p1, -0x1

    .line 43
    return p1
.end method

.method private final getBinding()Lcom/narvii/mediaeditor/databinding/FragmentScenePollPostBinding;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->binding$delegate:Lkotlin/properties/d;

    .line 3
    .line 4
    sget-object v1, Lcom/narvii/scene/poll/ScenePollPostFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    aget-object v1, v1, v2

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, p0, v1}, Lkotlin/properties/d;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/mediaeditor/databinding/FragmentScenePollPostBinding;

    .line 14
    return-object v0
.end method

.method public static synthetic n(Lcom/narvii/scene/poll/ScenePollPostFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/scene/poll/ScenePollPostFragment;->onViewCreated$lambda$0(Lcom/narvii/scene/poll/ScenePollPostFragment;)V

    return-void
.end method

.method public static synthetic o(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/narvii/scene/poll/ScenePollPostFragment;->onViewCreated$lambda$2(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private static final onViewCreated$lambda$0(Lcom/narvii/scene/poll/ScenePollPostFragment;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    .line 16
    const v2, 0x1020002

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 26
    move-result v0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v0, v1

    .line 29
    .line 30
    .line 31
    :goto_0
    filled-new-array {v1, v1}, [I

    .line 32
    move-result-object v1

    .line 33
    .line 34
    .line 35
    invoke-direct {p0}, Lcom/narvii/scene/poll/ScenePollPostFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentScenePollPostBinding;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    iget-object v2, v2, Lcom/narvii/mediaeditor/databinding/FragmentScenePollPostBinding;->scrollView:Lcom/narvii/widget/NVScrollView;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 42
    .line 43
    .line 44
    invoke-direct {p0}, Lcom/narvii/scene/poll/ScenePollPostFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentScenePollPostBinding;

    .line 45
    move-result-object v2

    .line 46
    .line 47
    iget-object v2, v2, Lcom/narvii/mediaeditor/databinding/FragmentScenePollPostBinding;->root:Landroid/widget/LinearLayout;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 51
    move-result v2

    .line 52
    sub-int/2addr v0, v2

    .line 53
    const/4 v2, 0x1

    .line 54
    .line 55
    aget v1, v1, v2

    .line 56
    sub-int/2addr v0, v1

    .line 57
    int-to-float v0, v0

    .line 58
    .line 59
    const/high16 v1, 0x40000000    # 2.0f

    .line 60
    div-float/2addr v0, v1

    .line 61
    const/4 v1, 0x0

    .line 62
    .line 63
    .line 64
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    .line 65
    move-result v0

    .line 66
    float-to-int v0, v0

    .line 67
    .line 68
    .line 69
    invoke-direct {p0}, Lcom/narvii/scene/poll/ScenePollPostFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentScenePollPostBinding;

    .line 70
    move-result-object v1

    .line 71
    .line 72
    iget-object v1, v1, Lcom/narvii/mediaeditor/databinding/FragmentScenePollPostBinding;->topPlaceholder:Landroid/view/View;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 76
    move-result-object v1

    .line 77
    .line 78
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 79
    .line 80
    if-eq v2, v0, :cond_1

    .line 81
    .line 82
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 83
    .line 84
    .line 85
    invoke-direct {p0}, Lcom/narvii/scene/poll/ScenePollPostFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentScenePollPostBinding;

    .line 86
    move-result-object p0

    .line 87
    .line 88
    iget-object p0, p0, Lcom/narvii/mediaeditor/databinding/FragmentScenePollPostBinding;->topPlaceholder:Landroid/view/View;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    :cond_1
    return-void
.end method

.method private static final onViewCreated$lambda$2(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 4
    const/4 p1, 0x0

    .line 5
    move p2, p1

    .line 6
    .line 7
    .line 8
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 9
    move-result p3

    .line 10
    .line 11
    if-ge p1, p3, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 15
    move-result p3

    .line 16
    .line 17
    const/16 p4, 0xa

    .line 18
    .line 19
    if-ne p3, p4, :cond_0

    .line 20
    .line 21
    add-int/lit8 p2, p2, 0x1

    .line 22
    .line 23
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 24
    goto :goto_0

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 28
    move-result p0

    .line 29
    .line 30
    if-ne p2, p0, :cond_2

    .line 31
    .line 32
    const-string p0, ""

    .line 33
    return-object p0

    .line 34
    :cond_2
    const/4 p0, 0x0

    .line 35
    return-object p0
.end method

.method public static synthetic p(Ljava/lang/Integer;Lcom/narvii/scene/poll/ScenePollPostFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/scene/poll/ScenePollPostFragment;->doSubmit$lambda$12(Ljava/lang/Integer;Lcom/narvii/scene/poll/ScenePollPostFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q(Lcom/narvii/scene/poll/ScenePollPostFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/scene/poll/ScenePollPostFragment;->doSubmit$lambda$12$lambda$11(Lcom/narvii/scene/poll/ScenePollPostFragment;)V

    return-void
.end method

.method private final removeOption(I)V
    .locals 1

    .line 1
    .line 2
    if-ltz p1, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->optionList:Ljava/util/List;

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-ge p1, v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->optionList:Ljava/util/List;

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    check-cast p1, Lw7/u;

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/narvii/scene/poll/ScenePollPostFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentScenePollPostBinding;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/FragmentScenePollPostBinding;->optionsContainer:Landroid/widget/LinearLayout;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lw7/u;->d()Ljava/lang/Object;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    check-cast p1, Landroid/view/View;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0}, Lcom/narvii/scene/poll/ScenePollPostFragment;->updateAddAndDeleteIcon()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->invalidateOptionsMenu()V

    .line 40
    :cond_0
    return-void
.end method

.method private final updateAddAndDeleteIcon()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->optionList:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    const/4 v2, 0x0

    .line 9
    .line 10
    if-le v0, v1, :cond_0

    .line 11
    move v0, v2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x4

    .line 14
    .line 15
    :goto_0
    iget-object v1, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->optionList:Ljava/util/List;

    .line 16
    .line 17
    check-cast v1, Ljava/lang/Iterable;

    .line 18
    .line 19
    .line 20
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result v3

    .line 26
    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v3

    .line 32
    .line 33
    check-cast v3, Lw7/u;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Lw7/u;->d()Ljava/lang/Object;

    .line 37
    move-result-object v3

    .line 38
    .line 39
    check-cast v3, Landroid/view/View;

    .line 40
    .line 41
    sget v4, Lcom/narvii/mediaeditor/R$id;->option_delete_iv:I

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    move-result-object v3

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 49
    goto :goto_1

    .line 50
    .line 51
    :cond_1
    iget-object v0, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->optionList:Ljava/util/List;

    .line 52
    .line 53
    .line 54
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 55
    move-result v0

    .line 56
    const/4 v1, 0x5

    .line 57
    .line 58
    if-ne v0, v1, :cond_2

    .line 59
    .line 60
    .line 61
    invoke-direct {p0}, Lcom/narvii/scene/poll/ScenePollPostFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentScenePollPostBinding;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/FragmentScenePollPostBinding;->addOption:Landroid/widget/RelativeLayout;

    .line 65
    .line 66
    const/16 v1, 0x8

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 70
    goto :goto_2

    .line 71
    .line 72
    .line 73
    :cond_2
    invoke-direct {p0}, Lcom/narvii/scene/poll/ScenePollPostFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentScenePollPostBinding;

    .line 74
    move-result-object v0

    .line 75
    .line 76
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/FragmentScenePollPostBinding;->addOption:Landroid/widget/RelativeLayout;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 80
    :goto_2
    return-void
.end method

.method private final updateOptionImage(Ljava/util/List;Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/model/Media;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    sget v0, Lcom/narvii/mediaeditor/R$id;->option_placeholder_iv:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sget v1, Lcom/narvii/mediaeditor/R$id;->option_iv:I

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    move-result-object p2

    .line 13
    .line 14
    check-cast p2, Lcom/narvii/widget/ThumbImageView;

    .line 15
    const/4 v1, 0x4

    .line 16
    const/4 v2, 0x0

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    move-object v3, p1

    .line 20
    .line 21
    check-cast v3, Ljava/util/Collection;

    .line 22
    .line 23
    .line 24
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 25
    move-result v3

    .line 26
    .line 27
    xor-int/lit8 v3, v3, 0x1

    .line 28
    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    check-cast p1, Lcom/narvii/model/Media;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, p1}, Lcom/narvii/widget/ThumbImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 45
    goto :goto_0

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 52
    :goto_0
    return-void
.end method

.method private final updatePollContent()V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->optionList:Ljava/util/List;

    .line 3
    .line 4
    check-cast v0, Ljava/lang/Iterable;

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    check-cast v1, Lw7/u;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Lw7/u;->d()Ljava/lang/Object;

    .line 25
    move-result-object v3

    .line 26
    .line 27
    check-cast v3, Landroid/view/View;

    .line 28
    .line 29
    sget v4, Lcom/narvii/mediaeditor/R$id;->option_et:I

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    move-result-object v3

    .line 34
    .line 35
    check-cast v3, Landroid/widget/TextView;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 39
    move-result-object v4

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 43
    move-result-object v4

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Lw7/u;->c()Ljava/lang/Object;

    .line 47
    move-result-object v5

    .line 48
    .line 49
    check-cast v5, Lcom/narvii/model/PollOption;

    .line 50
    .line 51
    iput-object v4, v5, Lcom/narvii/model/PollOption;->title:Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Lw7/u;->d()Ljava/lang/Object;

    .line 55
    move-result-object v1

    .line 56
    .line 57
    check-cast v1, Landroid/view/View;

    .line 58
    .line 59
    sget v5, Lcom/narvii/mediaeditor/R$id;->option_text_count_tv:I

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    move-result-object v1

    .line 64
    .line 65
    check-cast v1, Landroid/widget/TextView;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3}, Landroid/view/View;->hasFocus()Z

    .line 69
    move-result v3

    .line 70
    .line 71
    if-eqz v3, :cond_0

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 78
    move-result v2

    .line 79
    .line 80
    rsub-int/lit8 v2, v2, 0x1e

    .line 81
    .line 82
    .line 83
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 84
    move-result-object v2

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    goto :goto_0

    .line 89
    :cond_0
    const/4 v2, 0x4

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 93
    goto :goto_0

    .line 94
    .line 95
    :cond_1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 96
    .line 97
    .line 98
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 99
    .line 100
    iget-object v1, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->optionList:Ljava/util/List;

    .line 101
    .line 102
    check-cast v1, Ljava/lang/Iterable;

    .line 103
    .line 104
    .line 105
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 106
    move-result-object v1

    .line 107
    .line 108
    .line 109
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 110
    move-result v3

    .line 111
    const/4 v4, 0x1

    .line 112
    .line 113
    .line 114
    const-string/jumbo v5, "title"

    .line 115
    .line 116
    if-eqz v3, :cond_4

    .line 117
    .line 118
    .line 119
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 120
    move-result-object v3

    .line 121
    .line 122
    check-cast v3, Lw7/u;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v3}, Lw7/u;->c()Ljava/lang/Object;

    .line 126
    move-result-object v3

    .line 127
    .line 128
    check-cast v3, Lcom/narvii/model/PollOption;

    .line 129
    .line 130
    iget-object v3, v3, Lcom/narvii/model/PollOption;->title:Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    invoke-static {v3, v5}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-static {v3}, Lkotlin/text/k;->b1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 137
    move-result-object v3

    .line 138
    .line 139
    .line 140
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 141
    move-result-object v3

    .line 142
    .line 143
    .line 144
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 145
    move-result v5

    .line 146
    .line 147
    if-nez v5, :cond_2

    .line 148
    .line 149
    .line 150
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    move-result-object v5

    .line 152
    .line 153
    check-cast v5, Ljava/lang/Integer;

    .line 154
    .line 155
    if-eqz v5, :cond_3

    .line 156
    .line 157
    .line 158
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 159
    move-result v5

    .line 160
    goto :goto_2

    .line 161
    :cond_3
    move v5, v2

    .line 162
    :goto_2
    add-int/2addr v5, v4

    .line 163
    .line 164
    .line 165
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 166
    move-result-object v4

    .line 167
    .line 168
    .line 169
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    goto :goto_1

    .line 171
    .line 172
    :cond_4
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 173
    .line 174
    .line 175
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 176
    .line 177
    .line 178
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 179
    move-result-object v0

    .line 180
    .line 181
    .line 182
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 183
    move-result-object v0

    .line 184
    .line 185
    .line 186
    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 187
    move-result v2

    .line 188
    .line 189
    if-eqz v2, :cond_6

    .line 190
    .line 191
    .line 192
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 193
    move-result-object v2

    .line 194
    .line 195
    check-cast v2, Ljava/util/Map$Entry;

    .line 196
    .line 197
    .line 198
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 199
    move-result-object v3

    .line 200
    .line 201
    check-cast v3, Ljava/lang/Number;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 205
    move-result v3

    .line 206
    .line 207
    if-ne v3, v4, :cond_5

    .line 208
    .line 209
    .line 210
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 211
    move-result-object v3

    .line 212
    .line 213
    .line 214
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 215
    move-result-object v2

    .line 216
    .line 217
    .line 218
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    goto :goto_3

    .line 220
    .line 221
    :cond_6
    iget-object v0, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->optionList:Ljava/util/List;

    .line 222
    .line 223
    check-cast v0, Ljava/lang/Iterable;

    .line 224
    .line 225
    .line 226
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 227
    move-result-object v0

    .line 228
    .line 229
    .line 230
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 231
    move-result v2

    .line 232
    .line 233
    if-eqz v2, :cond_9

    .line 234
    .line 235
    .line 236
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 237
    move-result-object v2

    .line 238
    .line 239
    check-cast v2, Lw7/u;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v2}, Lw7/u;->c()Ljava/lang/Object;

    .line 243
    move-result-object v3

    .line 244
    .line 245
    check-cast v3, Lcom/narvii/model/PollOption;

    .line 246
    .line 247
    iget-object v3, v3, Lcom/narvii/model/PollOption;->title:Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    invoke-static {v3, v5}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    invoke-static {v3}, Lkotlin/text/k;->b1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 254
    move-result-object v3

    .line 255
    .line 256
    .line 257
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 258
    move-result-object v3

    .line 259
    .line 260
    .line 261
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 262
    move-result v4

    .line 263
    .line 264
    if-nez v4, :cond_8

    .line 265
    .line 266
    .line 267
    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 268
    move-result v3

    .line 269
    .line 270
    if-eqz v3, :cond_7

    .line 271
    goto :goto_5

    .line 272
    .line 273
    .line 274
    :cond_7
    invoke-virtual {v2}, Lw7/u;->d()Ljava/lang/Object;

    .line 275
    move-result-object v2

    .line 276
    .line 277
    check-cast v2, Landroid/view/View;

    .line 278
    .line 279
    sget v3, Lcom/narvii/mediaeditor/R$id;->option_input_rl:I

    .line 280
    .line 281
    .line 282
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 283
    move-result-object v2

    .line 284
    .line 285
    sget v3, Lcom/narvii/mediaeditor/R$drawable;->poll_option_invalid_background:I

    .line 286
    .line 287
    .line 288
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 289
    goto :goto_4

    .line 290
    .line 291
    .line 292
    :cond_8
    :goto_5
    invoke-virtual {v2}, Lw7/u;->d()Ljava/lang/Object;

    .line 293
    move-result-object v2

    .line 294
    .line 295
    check-cast v2, Landroid/view/View;

    .line 296
    .line 297
    sget v3, Lcom/narvii/mediaeditor/R$id;->option_input_rl:I

    .line 298
    .line 299
    .line 300
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 301
    move-result-object v2

    .line 302
    .line 303
    sget v3, Lcom/narvii/mediaeditor/R$drawable;->poll_option_background:I

    .line 304
    .line 305
    .line 306
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 307
    goto :goto_4

    .line 308
    :cond_9
    return-void
.end method


# virtual methods
.method protected canSubmit()Z
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->optionList:Ljava/util/List;

    .line 3
    .line 4
    check-cast v0, Ljava/lang/Iterable;

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    move v2, v1

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v3

    .line 15
    const/4 v4, 0x1

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v3

    .line 22
    .line 23
    check-cast v3, Lw7/u;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3}, Lw7/u;->c()Ljava/lang/Object;

    .line 27
    move-result-object v3

    .line 28
    .line 29
    check-cast v3, Lcom/narvii/model/PollOption;

    .line 30
    .line 31
    iget-object v3, v3, Lcom/narvii/model/PollOption;->title:Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    invoke-static {v3}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    .line 35
    move-result v3

    .line 36
    xor-int/2addr v3, v4

    .line 37
    add-int/2addr v2, v3

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v0, 0x2

    .line 40
    .line 41
    if-lt v2, v0, :cond_1

    .line 42
    move v1, v4

    .line 43
    :cond_1
    return v1
.end method

.method protected doSubmit()V
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->optionList:Ljava/util/List;

    .line 3
    .line 4
    check-cast v0, Ljava/lang/Iterable;

    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    const/16 v2, 0xa

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v2}, Lkotlin/collections/t;->x(Ljava/lang/Iterable;I)I

    .line 12
    move-result v2

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v2

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    check-cast v2, Lw7/u;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Lw7/u;->c()Ljava/lang/Object;

    .line 35
    move-result-object v2

    .line 36
    .line 37
    check-cast v2, Lcom/narvii/model/PollOption;

    .line 38
    .line 39
    .line 40
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 41
    goto :goto_0

    .line 42
    .line 43
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 44
    .line 45
    .line 46
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    .line 53
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    move-result v2

    .line 55
    .line 56
    if-eqz v2, :cond_2

    .line 57
    .line 58
    .line 59
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    move-result-object v2

    .line 61
    move-object v3, v2

    .line 62
    .line 63
    check-cast v3, Lcom/narvii/model/PollOption;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3}, Lcom/narvii/model/PollOption;->isEmpty()Z

    .line 67
    move-result v3

    .line 68
    .line 69
    xor-int/lit8 v3, v3, 0x1

    .line 70
    .line 71
    if-eqz v3, :cond_1

    .line 72
    .line 73
    .line 74
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 75
    goto :goto_1

    .line 76
    .line 77
    .line 78
    :cond_2
    invoke-direct {p0}, Lcom/narvii/scene/poll/ScenePollPostFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentScenePollPostBinding;

    .line 79
    move-result-object v1

    .line 80
    .line 81
    iget-object v1, v1, Lcom/narvii/mediaeditor/databinding/FragmentScenePollPostBinding;->title:Landroid/widget/EditText;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 85
    move-result-object v1

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 89
    move-result-object v1

    .line 90
    .line 91
    .line 92
    invoke-static {v1}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    .line 93
    move-result v1

    .line 94
    const/4 v2, 0x0

    .line 95
    .line 96
    if-eqz v1, :cond_3

    .line 97
    .line 98
    sget v1, Lcom/narvii/mediaeditor/R$string;->input_poll_title:I

    .line 99
    .line 100
    .line 101
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    move-result-object v1

    .line 103
    .line 104
    goto/16 :goto_4

    .line 105
    .line 106
    .line 107
    :cond_3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 108
    move-result-object v1

    .line 109
    .line 110
    .line 111
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 112
    move-result v3

    .line 113
    .line 114
    if-eqz v3, :cond_5

    .line 115
    .line 116
    .line 117
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 118
    move-result-object v3

    .line 119
    move-object v4, v3

    .line 120
    .line 121
    check-cast v4, Lcom/narvii/model/PollOption;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v4}, Lcom/narvii/model/PollOption;->firstMedia()Lcom/narvii/model/Media;

    .line 125
    move-result-object v5

    .line 126
    .line 127
    if-eqz v5, :cond_4

    .line 128
    .line 129
    iget-object v4, v4, Lcom/narvii/model/PollOption;->title:Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    invoke-static {v4}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    .line 133
    move-result v4

    .line 134
    .line 135
    if-eqz v4, :cond_4

    .line 136
    goto :goto_2

    .line 137
    :cond_5
    move-object v3, v2

    .line 138
    .line 139
    :goto_2
    if-eqz v3, :cond_6

    .line 140
    .line 141
    sget v1, Lcom/narvii/mediaeditor/R$string;->poll_incomplete_options:I

    .line 142
    .line 143
    .line 144
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 145
    move-result-object v1

    .line 146
    goto :goto_4

    .line 147
    .line 148
    :cond_6
    new-instance v1, Ljava/util/HashSet;

    .line 149
    .line 150
    .line 151
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 152
    .line 153
    new-instance v3, Ljava/util/ArrayList;

    .line 154
    .line 155
    .line 156
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .line 158
    .line 159
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 160
    move-result-object v4

    .line 161
    .line 162
    .line 163
    :cond_7
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 164
    move-result v5

    .line 165
    .line 166
    if-eqz v5, :cond_8

    .line 167
    .line 168
    .line 169
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 170
    move-result-object v5

    .line 171
    move-object v6, v5

    .line 172
    .line 173
    check-cast v6, Lcom/narvii/model/PollOption;

    .line 174
    .line 175
    iget-object v6, v6, Lcom/narvii/model/PollOption;->title:Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    const-string/jumbo v7, "title"

    .line 179
    .line 180
    .line 181
    invoke-static {v6, v7}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-static {v6}, Lkotlin/text/k;->b1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 185
    move-result-object v6

    .line 186
    .line 187
    .line 188
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 189
    move-result-object v6

    .line 190
    .line 191
    .line 192
    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 193
    move-result v6

    .line 194
    .line 195
    if-eqz v6, :cond_7

    .line 196
    .line 197
    .line 198
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    goto :goto_3

    .line 200
    .line 201
    .line 202
    :cond_8
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 203
    move-result v1

    .line 204
    .line 205
    .line 206
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 207
    move-result v3

    .line 208
    .line 209
    if-eq v1, v3, :cond_9

    .line 210
    .line 211
    sget v1, Lcom/narvii/mediaeditor/R$string;->poll_dulicate_options:I

    .line 212
    .line 213
    .line 214
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 215
    move-result-object v1

    .line 216
    goto :goto_4

    .line 217
    :cond_9
    move-object v1, v2

    .line 218
    .line 219
    :goto_4
    if-eqz v1, :cond_a

    .line 220
    .line 221
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    .line 222
    .line 223
    .line 224
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 225
    move-result-object v2

    .line 226
    .line 227
    .line 228
    invoke-direct {v0, v2}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 232
    move-result v2

    .line 233
    .line 234
    .line 235
    invoke-virtual {v0, v2}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 236
    .line 237
    new-instance v2, Lcom/narvii/scene/poll/a;

    .line 238
    .line 239
    .line 240
    invoke-direct {v2, v1, p0}, Lcom/narvii/scene/poll/a;-><init>(Ljava/lang/Integer;Lcom/narvii/scene/poll/ScenePollPostFragment;)V

    .line 241
    .line 242
    .line 243
    const v1, 0x104000a

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0, v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 250
    return-void

    .line 251
    .line 252
    :cond_a
    new-instance v1, Lcom/narvii/model/PollAttach;

    .line 253
    .line 254
    .line 255
    invoke-direct {v1}, Lcom/narvii/model/PollAttach;-><init>()V

    .line 256
    .line 257
    .line 258
    invoke-direct {p0}, Lcom/narvii/scene/poll/ScenePollPostFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentScenePollPostBinding;

    .line 259
    move-result-object v3

    .line 260
    .line 261
    iget-object v3, v3, Lcom/narvii/mediaeditor/databinding/FragmentScenePollPostBinding;->title:Landroid/widget/EditText;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 265
    move-result-object v3

    .line 266
    .line 267
    .line 268
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 269
    move-result-object v3

    .line 270
    .line 271
    .line 272
    invoke-static {v3}, Lkotlin/text/k;->b1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 273
    move-result-object v3

    .line 274
    .line 275
    .line 276
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 277
    move-result-object v3

    .line 278
    .line 279
    iput-object v3, v1, Lcom/narvii/model/PollAttach;->title:Ljava/lang/String;

    .line 280
    .line 281
    iput-object v0, v1, Lcom/narvii/model/PollAttach;->polloptList:Ljava/util/List;

    .line 282
    .line 283
    iget-object v0, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    .line 284
    .line 285
    const-string v3, "sceneInfo"

    .line 286
    .line 287
    if-nez v0, :cond_b

    .line 288
    .line 289
    .line 290
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 291
    move-object v0, v2

    .line 292
    .line 293
    :cond_b
    iget-object v0, v0, Lcom/narvii/scene/model/SceneInfo;->pollAttach:Lcom/narvii/model/PollAttach;

    .line 294
    .line 295
    if-eqz v0, :cond_c

    .line 296
    .line 297
    iget-object v0, v0, Lcom/narvii/model/PollAttach;->attachId:Ljava/lang/String;

    .line 298
    goto :goto_5

    .line 299
    :cond_c
    move-object v0, v2

    .line 300
    .line 301
    :goto_5
    iput-object v0, v1, Lcom/narvii/model/PollAttach;->attachId:Ljava/lang/String;

    .line 302
    .line 303
    iget-object v0, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    .line 304
    .line 305
    if-nez v0, :cond_d

    .line 306
    .line 307
    .line 308
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 309
    move-object v0, v2

    .line 310
    .line 311
    :cond_d
    iput-object v1, v0, Lcom/narvii/scene/model/SceneInfo;->pollAttach:Lcom/narvii/model/PollAttach;

    .line 312
    .line 313
    new-instance v0, Landroid/content/Intent;

    .line 314
    .line 315
    .line 316
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 317
    .line 318
    iget-object v1, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    .line 319
    .line 320
    if-nez v1, :cond_e

    .line 321
    .line 322
    .line 323
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 324
    goto :goto_6

    .line 325
    :cond_e
    move-object v2, v1

    .line 326
    .line 327
    .line 328
    :goto_6
    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 329
    move-result-object v1

    .line 330
    .line 331
    .line 332
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    const/4 v1, -0x1

    .line 334
    .line 335
    .line 336
    invoke-virtual {p0, v1, v0}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 340
    return-void
.end method

.method protected getPostObjectType()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method protected isContentEmpty()Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/scene/poll/ScenePollPostFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentScenePollPostBinding;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/mediaeditor/databinding/FragmentScenePollPostBinding;->title:Landroid/widget/EditText;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->optionList:Ljava/util/List;

    .line 23
    .line 24
    check-cast v0, Ljava/lang/Iterable;

    .line 25
    .line 26
    instance-of v1, v0, Ljava/util/Collection;

    .line 27
    const/4 v2, 0x1

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    move-object v1, v0

    .line 31
    .line 32
    check-cast v1, Ljava/util/Collection;

    .line 33
    .line 34
    .line 35
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 36
    move-result v1

    .line 37
    .line 38
    if-eqz v1, :cond_0

    .line 39
    goto :goto_0

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    .line 46
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    move-result v1

    .line 48
    .line 49
    if-eqz v1, :cond_3

    .line 50
    .line 51
    .line 52
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    move-result-object v1

    .line 54
    .line 55
    check-cast v1, Lw7/u;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Lw7/u;->c()Ljava/lang/Object;

    .line 59
    move-result-object v1

    .line 60
    .line 61
    check-cast v1, Lcom/narvii/model/PollOption;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/narvii/model/PollOption;->isEmpty()Z

    .line 65
    move-result v1

    .line 66
    xor-int/2addr v1, v2

    .line 67
    .line 68
    if-eqz v1, :cond_1

    .line 69
    :cond_2
    const/4 v2, 0x0

    .line 70
    :cond_3
    :goto_0
    return v2
.end method

.method protected isModified()Z
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    const-string v2, "sceneInfo"

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    move-object v0, v1

    .line 12
    .line 13
    :cond_0
    iget-object v0, v0, Lcom/narvii/scene/model/SceneInfo;->pollAttach:Lcom/narvii/model/PollAttach;

    .line 14
    const/4 v3, 0x1

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/narvii/scene/poll/ScenePollPostFragment;->isContentEmpty()Z

    .line 20
    move-result v0

    .line 21
    xor-int/2addr v0, v3

    .line 22
    return v0

    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    .line 25
    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    .line 29
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 30
    move-object v0, v1

    .line 31
    .line 32
    :cond_2
    iget-object v0, v0, Lcom/narvii/scene/model/SceneInfo;->pollAttach:Lcom/narvii/model/PollAttach;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/narvii/model/PollAttach;->title:Ljava/lang/String;

    .line 35
    .line 36
    iget-object v4, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    .line 37
    .line 38
    if-nez v4, :cond_3

    .line 39
    .line 40
    .line 41
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 42
    goto :goto_0

    .line 43
    :cond_3
    move-object v1, v4

    .line 44
    .line 45
    :goto_0
    iget-object v1, v1, Lcom/narvii/scene/model/SceneInfo;->pollAttach:Lcom/narvii/model/PollAttach;

    .line 46
    .line 47
    iget-object v1, v1, Lcom/narvii/model/PollAttach;->polloptList:Ljava/util/List;

    .line 48
    .line 49
    .line 50
    invoke-direct {p0}, Lcom/narvii/scene/poll/ScenePollPostFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentScenePollPostBinding;

    .line 51
    move-result-object v2

    .line 52
    .line 53
    iget-object v2, v2, Lcom/narvii/mediaeditor/databinding/FragmentScenePollPostBinding;->title:Landroid/widget/EditText;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 57
    move-result-object v2

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 61
    move-result-object v2

    .line 62
    .line 63
    .line 64
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 65
    move-result v0

    .line 66
    .line 67
    if-nez v0, :cond_4

    .line 68
    return v3

    .line 69
    .line 70
    :cond_4
    sget-object v0, Lcom/narvii/util/KUtils;->Companion:Lcom/narvii/util/KUtils$Companion;

    .line 71
    .line 72
    iget-object v2, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->optionList:Ljava/util/List;

    .line 73
    .line 74
    check-cast v2, Ljava/lang/Iterable;

    .line 75
    .line 76
    new-instance v4, Ljava/util/ArrayList;

    .line 77
    .line 78
    const/16 v5, 0xa

    .line 79
    .line 80
    .line 81
    invoke-static {v2, v5}, Lkotlin/collections/t;->x(Ljava/lang/Iterable;I)I

    .line 82
    move-result v5

    .line 83
    .line 84
    .line 85
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 86
    .line 87
    .line 88
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 89
    move-result-object v2

    .line 90
    .line 91
    .line 92
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    move-result v5

    .line 94
    .line 95
    if-eqz v5, :cond_5

    .line 96
    .line 97
    .line 98
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    move-result-object v5

    .line 100
    .line 101
    check-cast v5, Lw7/u;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v5}, Lw7/u;->c()Ljava/lang/Object;

    .line 105
    move-result-object v5

    .line 106
    .line 107
    check-cast v5, Lcom/narvii/model/PollOption;

    .line 108
    .line 109
    .line 110
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 111
    goto :goto_1

    .line 112
    .line 113
    :cond_5
    sget-object v2, Lcom/narvii/scene/poll/ScenePollPostFragment$isModified$2;->INSTANCE:Lcom/narvii/scene/poll/ScenePollPostFragment$isModified$2;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v4, v1, v2}, Lcom/narvii/util/KUtils$Companion;->isListSame(Ljava/util/List;Ljava/util/List;Le8/p;)Z

    .line 117
    move-result v0

    .line 118
    .line 119
    if-nez v0, :cond_6

    .line 120
    return v3

    .line 121
    :cond_6
    const/4 v0, 0x0

    .line 122
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 7
    move-result v1

    .line 8
    .line 9
    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v1, v0

    .line 14
    .line 15
    :goto_0
    sget v2, Lcom/narvii/mediaeditor/R$id;->add_option:I

    .line 16
    const/4 v3, 0x1

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    goto :goto_1

    .line 20
    .line 21
    .line 22
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 23
    move-result v4

    .line 24
    .line 25
    if-ne v4, v2, :cond_2

    .line 26
    .line 27
    .line 28
    invoke-static {p0, v0, v3, v0}, Lcom/narvii/scene/poll/ScenePollPostFragment;->addOption$default(Lcom/narvii/scene/poll/ScenePollPostFragment;Lcom/narvii/model/PollOption;ILjava/lang/Object;)V

    .line 29
    .line 30
    goto/16 :goto_4

    .line 31
    .line 32
    :cond_2
    :goto_1
    sget v0, Lcom/narvii/mediaeditor/R$id;->option_delete_iv:I

    .line 33
    .line 34
    const-string v2, "null cannot be cast to non-null type android.view.View"

    .line 35
    .line 36
    if-nez v1, :cond_3

    .line 37
    goto :goto_2

    .line 38
    .line 39
    .line 40
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 41
    move-result v4

    .line 42
    .line 43
    if-ne v4, v0, :cond_4

    .line 44
    .line 45
    sget v0, Lcom/narvii/mediaeditor/R$id;->poll_option_parent:I

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    .line 52
    invoke-static {p1, v2}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    check-cast p1, Landroid/view/View;

    .line 55
    .line 56
    .line 57
    invoke-direct {p0, p1}, Lcom/narvii/scene/poll/ScenePollPostFragment;->findIndexForOptionView(Landroid/view/View;)I

    .line 58
    move-result p1

    .line 59
    .line 60
    .line 61
    invoke-direct {p0, p1}, Lcom/narvii/scene/poll/ScenePollPostFragment;->removeOption(I)V

    .line 62
    goto :goto_4

    .line 63
    .line 64
    :cond_4
    :goto_2
    sget v0, Lcom/narvii/mediaeditor/R$id;->option_image_rl:I

    .line 65
    .line 66
    if-nez v1, :cond_5

    .line 67
    goto :goto_4

    .line 68
    .line 69
    .line 70
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 71
    move-result v1

    .line 72
    .line 73
    if-ne v1, v0, :cond_8

    .line 74
    .line 75
    sget v0, Lcom/narvii/mediaeditor/R$id;->poll_option_parent:I

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 79
    move-result-object p1

    .line 80
    .line 81
    .line 82
    invoke-static {p1, v2}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    check-cast p1, Landroid/view/View;

    .line 85
    .line 86
    .line 87
    invoke-direct {p0, p1}, Lcom/narvii/scene/poll/ScenePollPostFragment;->findIndexForOptionView(Landroid/view/View;)I

    .line 88
    move-result p1

    .line 89
    .line 90
    if-ltz p1, :cond_8

    .line 91
    .line 92
    iget-object v0, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->optionList:Ljava/util/List;

    .line 93
    .line 94
    .line 95
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 96
    move-result v0

    .line 97
    .line 98
    if-ge p1, v0, :cond_8

    .line 99
    .line 100
    iget-object v0, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->optionList:Ljava/util/List;

    .line 101
    .line 102
    .line 103
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 104
    move-result-object v0

    .line 105
    .line 106
    check-cast v0, Lw7/u;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Lw7/u;->c()Ljava/lang/Object;

    .line 110
    move-result-object v0

    .line 111
    .line 112
    check-cast v0, Lcom/narvii/model/PollOption;

    .line 113
    .line 114
    iget-object v0, v0, Lcom/narvii/model/PollOption;->mediaList:Ljava/util/List;

    .line 115
    const/4 v1, 0x0

    .line 116
    .line 117
    if-eqz v0, :cond_6

    .line 118
    .line 119
    .line 120
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 121
    move-result v0

    .line 122
    .line 123
    if-nez v0, :cond_6

    .line 124
    goto :goto_3

    .line 125
    :cond_6
    move v3, v1

    .line 126
    .line 127
    :goto_3
    new-instance v0, Landroid/os/Bundle;

    .line 128
    .line 129
    .line 130
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 131
    .line 132
    .line 133
    const-string/jumbo v2, "type"

    .line 134
    .line 135
    const-string v4, "photo"

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v2, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    const-string v2, "index"

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 144
    .line 145
    iget-object p1, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 146
    .line 147
    if-eqz p1, :cond_8

    .line 148
    .line 149
    iget-object v2, p0, Lcom/narvii/scene/SceneBasePostFragment;->draftDir:Ljava/io/File;

    .line 150
    .line 151
    if-eqz v3, :cond_7

    .line 152
    .line 153
    const/16 v1, 0x40

    .line 154
    .line 155
    :cond_7
    or-int/lit8 v1, v1, 0xe

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1, v2, v0, v1}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;I)V

    .line 159
    nop

    .line 160
    :cond_8
    :goto_4
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/scene/SceneBasePostFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    sget v0, Lcom/narvii/mediaeditor/R$string;->new_poll:I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 9
    .line 10
    const-string v0, "sceneInfo"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    const-class v2, Lcom/narvii/scene/model/SceneInfo;

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    const-string v2, "readAs(...)"

    .line 23
    .line 24
    .line 25
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    check-cast v1, Lcom/narvii/scene/model/SceneInfo;

    .line 28
    .line 29
    iput-object v1, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    .line 30
    const/4 v1, 0x0

    .line 31
    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    const-string v2, "savedPollAttach"

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move-object p1, v1

    .line 41
    .line 42
    .line 43
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 44
    move-result v2

    .line 45
    .line 46
    if-nez v2, :cond_2

    .line 47
    .line 48
    iget-object v2, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    .line 49
    .line 50
    if-nez v2, :cond_1

    .line 51
    .line 52
    .line 53
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    move-object v1, v2

    .line 56
    .line 57
    :goto_1
    const-class v0, Lcom/narvii/model/PollAttach;

    .line 58
    .line 59
    .line 60
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    check-cast p1, Lcom/narvii/model/PollAttach;

    .line 64
    .line 65
    iput-object p1, v1, Lcom/narvii/scene/model/SceneInfo;->pollAttach:Lcom/narvii/model/PollAttach;

    .line 66
    :cond_2
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string p2, "inflater"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/narvii/scene/poll/ScenePollPostFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentScenePollPostBinding;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    iget-object p1, p1, Lcom/narvii/mediaeditor/databinding/FragmentScenePollPostBinding;->root:Landroid/widget/LinearLayout;

    .line 12
    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroyView()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p0}, Lcom/narvii/media/MediaPickerFragment;->removeOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    .line 11
    :cond_0
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/scene/poll/ScenePollPostFragment;->updatePollContent()V

    .line 6
    :cond_0
    return-void
.end method

.method public onPickMediaResult(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    const-string v0, "index"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 8
    move-result p2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p2, -0x1

    .line 11
    .line 12
    :goto_0
    if-ltz p2, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->optionList:Ljava/util/List;

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    move-result v0

    .line 19
    .line 20
    if-ge p2, v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->optionList:Ljava/util/List;

    .line 23
    .line 24
    .line 25
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object p2

    .line 27
    .line 28
    check-cast p2, Lw7/u;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Lw7/u;->c()Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    check-cast v0, Lcom/narvii/model/PollOption;

    .line 35
    .line 36
    iput-object p1, v0, Lcom/narvii/model/PollOption;->mediaList:Ljava/util/List;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Lw7/u;->d()Ljava/lang/Object;

    .line 40
    move-result-object p2

    .line 41
    .line 42
    check-cast p2, Landroid/view/View;

    .line 43
    .line 44
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/narvii/scene/poll/ScenePollPostFragment;->updateOptionImage(Ljava/util/List;Landroid/view/View;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->invalidateOptionsMenu()V

    .line 49
    :cond_1
    return-void
.end method

.method protected onPostDeleted()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/scene/SceneBasePostFragment;->onPostDeleted()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    const-string v2, "sceneInfo"

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 14
    move-object v0, v1

    .line 15
    .line 16
    :cond_0
    iput-object v1, v0, Lcom/narvii/scene/model/SceneInfo;->pollAttach:Lcom/narvii/model/PollAttach;

    .line 17
    .line 18
    new-instance v0, Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 22
    .line 23
    iget-object v3, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    .line 24
    .line 25
    if-nez v3, :cond_1

    .line 26
    .line 27
    .line 28
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move-object v1, v3

    .line 31
    .line 32
    .line 33
    :goto_0
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    const/4 v1, -0x1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v1, v0}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 45
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "outState"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 9
    .line 10
    new-instance v0, Lcom/narvii/model/PollAttach;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0}, Lcom/narvii/model/PollAttach;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/narvii/scene/poll/ScenePollPostFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentScenePollPostBinding;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    iget-object v1, v1, Lcom/narvii/mediaeditor/databinding/FragmentScenePollPostBinding;->title:Landroid/widget/EditText;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    iput-object v1, v0, Lcom/narvii/model/PollAttach;->title:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->optionList:Ljava/util/List;

    .line 32
    .line 33
    check-cast v1, Ljava/lang/Iterable;

    .line 34
    .line 35
    new-instance v2, Ljava/util/ArrayList;

    .line 36
    .line 37
    const/16 v3, 0xa

    .line 38
    .line 39
    .line 40
    invoke-static {v1, v3}, Lkotlin/collections/t;->x(Ljava/lang/Iterable;I)I

    .line 41
    move-result v3

    .line 42
    .line 43
    .line 44
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 45
    .line 46
    .line 47
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    .line 51
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    move-result v3

    .line 53
    .line 54
    if-eqz v3, :cond_0

    .line 55
    .line 56
    .line 57
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    move-result-object v3

    .line 59
    .line 60
    check-cast v3, Lw7/u;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3}, Lw7/u;->c()Ljava/lang/Object;

    .line 64
    move-result-object v4

    .line 65
    .line 66
    check-cast v4, Lcom/narvii/model/PollOption;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3}, Lw7/u;->d()Ljava/lang/Object;

    .line 70
    move-result-object v3

    .line 71
    .line 72
    check-cast v3, Landroid/view/View;

    .line 73
    .line 74
    sget v5, Lcom/narvii/mediaeditor/R$id;->option_et:I

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 78
    move-result-object v3

    .line 79
    .line 80
    check-cast v3, Landroid/widget/EditText;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 84
    move-result-object v3

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 88
    move-result-object v3

    .line 89
    .line 90
    iput-object v3, v4, Lcom/narvii/model/PollOption;->title:Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 94
    goto :goto_0

    .line 95
    .line 96
    :cond_0
    iput-object v2, v0, Lcom/narvii/model/PollAttach;->polloptList:Ljava/util/List;

    .line 97
    .line 98
    const-string v1, "savedPollAttach"

    .line 99
    .line 100
    .line 101
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 102
    move-result-object v0

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "view"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-super {p0, p1, p2}, Lcom/narvii/scene/SceneBasePostFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/narvii/scene/poll/ScenePollPostFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentScenePollPostBinding;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    iget-object p1, p1, Lcom/narvii/mediaeditor/databinding/FragmentScenePollPostBinding;->addOption:Landroid/widget/RelativeLayout;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 22
    move-result-object p1

    .line 23
    const/4 p2, 0x0

    .line 24
    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    const-class v0, Lcom/narvii/media/MediaPickerFragment;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    const-string v2, "getSimpleName(...)"

    .line 34
    .line 35
    .line 36
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 40
    move-result-object v2

    .line 41
    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    instance-of v3, v2, Lcom/narvii/media/MediaPickerFragment;

    .line 45
    .line 46
    if-nez v3, :cond_0

    .line 47
    goto :goto_0

    .line 48
    .line 49
    :cond_0
    check-cast v2, Lcom/narvii/app/NVFragment;

    .line 50
    goto :goto_1

    .line 51
    .line 52
    .line 53
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    const-string v2, "beginTransaction(...)"

    .line 63
    .line 64
    .line 65
    invoke-static {p1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 72
    .line 73
    .line 74
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 75
    move-object v2, v0

    .line 76
    .line 77
    check-cast v2, Lcom/narvii/app/NVFragment;

    .line 78
    .line 79
    :goto_1
    check-cast v2, Lcom/narvii/media/MediaPickerFragment;

    .line 80
    goto :goto_2

    .line 81
    :cond_2
    move-object v2, p2

    .line 82
    .line 83
    :goto_2
    iput-object v2, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 84
    .line 85
    if-eqz v2, :cond_3

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2, p0}, Lcom/narvii/media/MediaPickerFragment;->addOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    .line 89
    .line 90
    .line 91
    :cond_3
    invoke-direct {p0}, Lcom/narvii/scene/poll/ScenePollPostFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentScenePollPostBinding;

    .line 92
    move-result-object p1

    .line 93
    .line 94
    iget-object p1, p1, Lcom/narvii/mediaeditor/databinding/FragmentScenePollPostBinding;->root:Landroid/widget/LinearLayout;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 98
    move-result-object p1

    .line 99
    .line 100
    new-instance v0, Lcom/narvii/scene/poll/b;

    .line 101
    .line 102
    .line 103
    invoke-direct {v0, p0}, Lcom/narvii/scene/poll/b;-><init>(Lcom/narvii/scene/poll/ScenePollPostFragment;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 107
    .line 108
    .line 109
    invoke-direct {p0}, Lcom/narvii/scene/poll/ScenePollPostFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentScenePollPostBinding;

    .line 110
    move-result-object p1

    .line 111
    .line 112
    iget-object p1, p1, Lcom/narvii/mediaeditor/databinding/FragmentScenePollPostBinding;->title:Landroid/widget/EditText;

    .line 113
    .line 114
    new-instance v0, Lcom/narvii/widget/EditTextInnerScrollListener;

    .line 115
    .line 116
    .line 117
    invoke-direct {v0}, Lcom/narvii/widget/EditTextInnerScrollListener;-><init>()V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 121
    .line 122
    .line 123
    invoke-direct {p0}, Lcom/narvii/scene/poll/ScenePollPostFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentScenePollPostBinding;

    .line 124
    move-result-object p1

    .line 125
    .line 126
    iget-object p1, p1, Lcom/narvii/mediaeditor/databinding/FragmentScenePollPostBinding;->title:Landroid/widget/EditText;

    .line 127
    .line 128
    iget-object v0, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->textWatcher:Lcom/narvii/scene/poll/ScenePollPostFragment$textWatcher$1;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 132
    .line 133
    .line 134
    invoke-direct {p0}, Lcom/narvii/scene/poll/ScenePollPostFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentScenePollPostBinding;

    .line 135
    move-result-object p1

    .line 136
    .line 137
    iget-object p1, p1, Lcom/narvii/mediaeditor/databinding/FragmentScenePollPostBinding;->title:Landroid/widget/EditText;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 141
    .line 142
    .line 143
    invoke-direct {p0}, Lcom/narvii/scene/poll/ScenePollPostFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentScenePollPostBinding;

    .line 144
    move-result-object p1

    .line 145
    .line 146
    iget-object p1, p1, Lcom/narvii/mediaeditor/databinding/FragmentScenePollPostBinding;->title:Landroid/widget/EditText;

    .line 147
    .line 148
    new-instance v0, Landroid/text/method/SingleLineTransformationMethod;

    .line 149
    .line 150
    .line 151
    invoke-direct {v0}, Landroid/text/method/SingleLineTransformationMethod;-><init>()V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 155
    .line 156
    .line 157
    invoke-direct {p0}, Lcom/narvii/scene/poll/ScenePollPostFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentScenePollPostBinding;

    .line 158
    move-result-object p1

    .line 159
    .line 160
    iget-object p1, p1, Lcom/narvii/mediaeditor/databinding/FragmentScenePollPostBinding;->title:Landroid/widget/EditText;

    .line 161
    const/4 v0, 0x2

    .line 162
    .line 163
    new-array v1, v0, [Landroid/text/InputFilter;

    .line 164
    .line 165
    new-instance v2, Lcom/narvii/scene/poll/c;

    .line 166
    .line 167
    .line 168
    invoke-direct {v2}, Lcom/narvii/scene/poll/c;-><init>()V

    .line 169
    const/4 v3, 0x0

    .line 170
    .line 171
    aput-object v2, v1, v3

    .line 172
    .line 173
    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    .line 174
    .line 175
    const/16 v3, 0x64

    .line 176
    .line 177
    .line 178
    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 179
    const/4 v3, 0x1

    .line 180
    .line 181
    aput-object v2, v1, v3

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 185
    .line 186
    iget-object p1, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    .line 187
    .line 188
    if-nez p1, :cond_4

    .line 189
    .line 190
    const-string p1, "sceneInfo"

    .line 191
    .line 192
    .line 193
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 194
    move-object p1, p2

    .line 195
    .line 196
    :cond_4
    iget-object p1, p1, Lcom/narvii/scene/model/SceneInfo;->pollAttach:Lcom/narvii/model/PollAttach;

    .line 197
    .line 198
    if-eqz p1, :cond_5

    .line 199
    .line 200
    .line 201
    invoke-direct {p0}, Lcom/narvii/scene/poll/ScenePollPostFragment;->getBinding()Lcom/narvii/mediaeditor/databinding/FragmentScenePollPostBinding;

    .line 202
    move-result-object v1

    .line 203
    .line 204
    iget-object v1, v1, Lcom/narvii/mediaeditor/databinding/FragmentScenePollPostBinding;->title:Landroid/widget/EditText;

    .line 205
    .line 206
    iget-object v2, p1, Lcom/narvii/model/PollAttach;->title:Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    .line 211
    iget-object p1, p1, Lcom/narvii/model/PollAttach;->polloptList:Ljava/util/List;

    .line 212
    .line 213
    const-string v1, "polloptList"

    .line 214
    .line 215
    .line 216
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    .line 218
    check-cast p1, Ljava/lang/Iterable;

    .line 219
    .line 220
    .line 221
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 222
    move-result-object p1

    .line 223
    .line 224
    .line 225
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 226
    move-result v1

    .line 227
    .line 228
    if-eqz v1, :cond_5

    .line 229
    .line 230
    .line 231
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 232
    move-result-object v1

    .line 233
    .line 234
    check-cast v1, Lcom/narvii/model/PollOption;

    .line 235
    .line 236
    .line 237
    invoke-direct {p0, v1}, Lcom/narvii/scene/poll/ScenePollPostFragment;->addOption(Lcom/narvii/model/PollOption;)V

    .line 238
    goto :goto_3

    .line 239
    .line 240
    :cond_5
    iget-object p1, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->optionList:Ljava/util/List;

    .line 241
    .line 242
    .line 243
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 244
    move-result p1

    .line 245
    .line 246
    if-ge p1, v0, :cond_6

    .line 247
    .line 248
    iget-object p1, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->optionList:Ljava/util/List;

    .line 249
    .line 250
    .line 251
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 252
    move-result p1

    .line 253
    .line 254
    :goto_4
    if-ge p1, v0, :cond_6

    .line 255
    .line 256
    .line 257
    invoke-static {p0, p2, v3, p2}, Lcom/narvii/scene/poll/ScenePollPostFragment;->addOption$default(Lcom/narvii/scene/poll/ScenePollPostFragment;Lcom/narvii/model/PollOption;ILjava/lang/Object;)V

    .line 258
    .line 259
    add-int/lit8 p1, p1, 0x1

    .line 260
    goto :goto_4

    .line 261
    :cond_6
    return-void
.end method
