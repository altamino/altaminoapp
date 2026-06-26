.class public final Lcom/narvii/scene/poll/ScenePollPostFragment;
.super Lcom/narvii/scene/SceneBasePostFragment;
.source "ScenePollPostFragment.kt"

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
    value = "SMAP\nScenePollPostFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScenePollPostFragment.kt\ncom/narvii/scene/poll/ScenePollPostFragment\n+ 2 NVExtension.kt\ncom/narvii/util/kotlin/NVExtensionKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,361:1\n33#2,14:362\n1587#3,2:376\n1871#3,5:378\n1313#3:383\n1382#3,3:384\n673#3:387\n746#3,2:388\n1411#3,8:390\n1313#3:398\n1382#3,3:399\n1792#3,3:402\n1313#3:405\n1382#3,3:406\n1587#3,2:409\n1587#3,2:411\n1587#3,2:420\n1596#3,3:422\n1587#3,2:425\n459#4:413\n444#4,6:414\n*E\n*S KotlinDebug\n*F\n+ 1 ScenePollPostFragment.kt\ncom/narvii/scene/poll/ScenePollPostFragment\n*L\n80#1,14:362\n106#1,2:376\n170#1,5:378\n177#1:383\n177#1,3:384\n177#1:387\n177#1,2:388\n181#1,8:390\n228#1:398\n228#1,3:399\n236#1,3:402\n245#1:405\n245#1,3:406\n252#1,2:409\n267#1,2:411\n275#1,2:420\n331#1,3:422\n354#1,2:425\n274#1:413\n274#1,6:414\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/scene/poll/ScenePollPostFragment$Companion;

.field public static final MAX_OPTION_COUNT:I = 0x5

.field public static final MAX_OPTION_INPUT_LENGTH:I = 0x1e

.field public static final MIN_OPTION_COUNT:I = 0x2


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

.field private optionIndexCount:I

.field private final optionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Lcom/narvii/model/PollOption;",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private sceneInfo:Lcom/narvii/scene/model/SceneInfo;

.field private final textWatcher:Lcom/narvii/scene/poll/ScenePollPostFragment$textWatcher$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/scene/poll/ScenePollPostFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/scene/poll/ScenePollPostFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/scene/poll/ScenePollPostFragment;->Companion:Lcom/narvii/scene/poll/ScenePollPostFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/narvii/scene/SceneBasePostFragment;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->optionList:Ljava/util/List;

    .line 44
    new-instance v0, Lcom/narvii/scene/poll/ScenePollPostFragment$textWatcher$1;

    invoke-direct {v0, p0}, Lcom/narvii/scene/poll/ScenePollPostFragment$textWatcher$1;-><init>(Lcom/narvii/scene/poll/ScenePollPostFragment;)V

    iput-object v0, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->textWatcher:Lcom/narvii/scene/poll/ScenePollPostFragment$textWatcher$1;

    return-void
.end method

.method public static final synthetic access$updatePollContent(Lcom/narvii/scene/poll/ScenePollPostFragment;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/narvii/scene/poll/ScenePollPostFragment;->updatePollContent()V

    return-void
.end method

.method private final addOption(Lcom/narvii/model/PollOption;)V
    .locals 6

    .line 286
    iget-object v0, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->optionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    return-void

    .line 290
    :cond_0
    iget v0, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->optionIndexCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->optionIndexCount:I

    .line 291
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/narvii/mediaeditor/R$layout;->scene_poll_option_layout:I

    sget v3, Lcom/narvii/mediaeditor/R$id;->root:I

    invoke-virtual {p0, v3}, Lcom/narvii/scene/poll/ScenePollPostFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 293
    sget v2, Lcom/narvii/mediaeditor/R$id;->option_image_rl:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 294
    sget v3, Lcom/narvii/mediaeditor/R$id;->poll_option_parent:I

    invoke-virtual {v2, v3, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 295
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    sget v2, Lcom/narvii/mediaeditor/R$id;->option_et:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const-string v3, "et"

    .line 298
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lcom/narvii/mediaeditor/R$string;->poll_option_index_n:I

    new-array v1, v1, [Ljava/lang/Object;

    iget v5, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->optionIndexCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-virtual {p0, v3, v1}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 299
    iget-object v1, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->textWatcher:Lcom/narvii/scene/poll/ScenePollPostFragment$textWatcher$1;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 300
    invoke-virtual {v2, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 301
    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setSaveEnabled(Z)V

    .line 302
    sget v1, Lcom/narvii/mediaeditor/R$id;->option_delete_iv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 303
    sget v3, Lcom/narvii/mediaeditor/R$id;->poll_option_parent:I

    invoke-virtual {v1, v3, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 304
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    sget v1, Lcom/narvii/mediaeditor/R$id;->options_container:I

    invoke-virtual {p0, v1}, Lcom/narvii/scene/poll/ScenePollPostFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    if-eqz p1, :cond_1

    .line 309
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/narvii/model/PollOption;

    invoke-static {p1, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/PollOption;

    .line 310
    iget-object v1, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->optionList:Ljava/util/List;

    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, p1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    iget-object v1, p1, Lcom/narvii/model/PollOption;->title:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 312
    iget-object p1, p1, Lcom/narvii/model/PollOption;->mediaList:Ljava/util/List;

    const-string v1, "optionView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/narvii/scene/poll/ScenePollPostFragment;->updateOptionImage(Ljava/util/List;Landroid/view/View;)V

    goto :goto_0

    .line 314
    :cond_1
    iget-object p1, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->optionList:Ljava/util/List;

    new-instance v1, Lkotlin/Pair;

    new-instance v2, Lcom/narvii/model/PollOption;

    invoke-direct {v2}, Lcom/narvii/model/PollOption;-><init>()V

    invoke-direct {v1, v2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    :goto_0
    invoke-direct {p0}, Lcom/narvii/scene/poll/ScenePollPostFragment;->updateAddAndDeleteIcon()V

    .line 317
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->invalidateOptionsMenu()V

    return-void
.end method

.method static synthetic addOption$default(Lcom/narvii/scene/poll/ScenePollPostFragment;Lcom/narvii/model/PollOption;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 285
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/scene/poll/ScenePollPostFragment;->addOption(Lcom/narvii/model/PollOption;)V

    return-void
.end method

.method private final findIndexForOptionView(Landroid/view/View;)I
    .locals 4

    .line 331
    iget-object v0, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->optionList:Ljava/util/List;

    .line 423
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-ltz v1, :cond_1

    check-cast v2, Lkotlin/Pair;

    .line 332
    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    move v1, v3

    goto :goto_0

    .line 423
    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    const/4 p1, 0x0

    throw p1

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method private final removeOption(I)V
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->optionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ltz p1, :cond_1

    if-gt v0, p1, :cond_0

    goto :goto_0

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->optionList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Pair;

    .line 325
    sget v0, Lcom/narvii/mediaeditor/R$id;->options_container:I

    invoke-virtual {p0, v0}, Lcom/narvii/scene/poll/ScenePollPostFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 326
    invoke-direct {p0}, Lcom/narvii/scene/poll/ScenePollPostFragment;->updateAddAndDeleteIcon()V

    .line 327
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->invalidateOptionsMenu()V

    :cond_1
    :goto_0
    return-void
.end method

.method private final updateAddAndDeleteIcon()V
    .locals 5

    .line 353
    iget-object v0, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->optionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-le v0, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 354
    :goto_0
    iget-object v2, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->optionList:Ljava/util/List;

    .line 425
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/Pair;

    .line 354
    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    sget v4, Lcom/narvii/mediaeditor/R$id;->option_delete_iv:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "it.second.findViewById<V\u2026w>(R.id.option_delete_iv)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 355
    :cond_1
    iget-object v0, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->optionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x5

    const-string v3, "add_option"

    if-ne v0, v2, :cond_2

    .line 356
    sget v0, Lcom/narvii/mediaeditor/R$id;->add_option:I

    invoke-virtual {p0, v0}, Lcom/narvii/scene/poll/ScenePollPostFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_2

    .line 358
    :cond_2
    sget v0, Lcom/narvii/mediaeditor/R$id;->add_option:I

    invoke-virtual {p0, v0}, Lcom/narvii/scene/poll/ScenePollPostFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method private final updateOptionImage(Ljava/util/List;Landroid/view/View;)V
    .locals 6
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

    .line 340
    sget v0, Lcom/narvii/mediaeditor/R$id;->option_placeholder_iv:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 341
    sget v1, Lcom/narvii/mediaeditor/R$id;->option_iv:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/ThumbImageView;

    const/4 v1, 0x4

    const-string v2, "iv"

    const-string v3, "placeholder"

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    .line 342
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    .line 343
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 344
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 345
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Media;

    invoke-virtual {p2, p1}, Lcom/narvii/widget/ThumbImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    goto :goto_0

    .line 347
    :cond_0
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 348
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private final updatePollContent()V
    .locals 8

    .line 252
    iget-object v0, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->optionList:Ljava/util/List;

    .line 409
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    .line 253
    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    sget v4, Lcom/narvii/mediaeditor/R$id;->option_et:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, "et"

    .line 254
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 255
    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/model/PollOption;

    iput-object v4, v5, Lcom/narvii/model/PollOption;->title:Ljava/lang/String;

    .line 256
    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    sget v5, Lcom/narvii/mediaeditor/R$id;->option_text_count_tv:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 257
    invoke-virtual {v3}, Landroid/widget/TextView;->hasFocus()Z

    move-result v3

    const-string v5, "countHint"

    if-eqz v3, :cond_0

    .line 258
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 259
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x1e

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 261
    :cond_0
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 266
    :cond_1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 267
    iget-object v1, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->optionList:Ljava/util/List;

    .line 411
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "null cannot be cast to non-null type kotlin.CharSequence"

    const-string v5, "it.first.title"

    const/4 v6, 0x1

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/Pair;

    .line 268
    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/PollOption;

    iget-object v3, v3, Lcom/narvii/model/PollOption;->title:Ljava/lang/String;

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v3, :cond_4

    invoke-static {v3}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 269
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 270
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    add-int/2addr v4, v6

    .line 271
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 268
    :cond_4
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 413
    :cond_5
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 414
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 274
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    if-ne v7, v6, :cond_7

    const/4 v7, 0x1

    goto :goto_4

    :cond_7
    const/4 v7, 0x0

    :goto_4
    if-eqz v7, :cond_6

    .line 416
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 275
    :cond_8
    iget-object v0, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->optionList:Ljava/util/List;

    .line 420
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/Pair;

    .line 276
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/PollOption;

    iget-object v3, v3, Lcom/narvii/model/PollOption;->title:Ljava/lang/String;

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v3, :cond_b

    invoke-static {v3}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 277
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_6

    .line 280
    :cond_9
    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    sget v3, Lcom/narvii/mediaeditor/R$id;->option_input_rl:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/narvii/mediaeditor/R$drawable;->poll_option_invalid_background:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_5

    .line 278
    :cond_a
    :goto_6
    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    sget v3, Lcom/narvii/mediaeditor/R$id;->option_input_rl:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/narvii/mediaeditor/R$drawable;->poll_option_background:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_5

    .line 276
    :cond_b
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method protected canSubmit()Z
    .locals 5

    .line 170
    iget-object v0, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->optionList:Ljava/util/List;

    .line 379
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 380
    check-cast v3, Lkotlin/Pair;

    .line 171
    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/PollOption;

    iget-object v3, v3, Lcom/narvii/model/PollOption;->title:Ljava/lang/String;

    invoke-static {v3}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result v3

    xor-int/2addr v3, v4

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-lt v2, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method protected doSubmit()V
    .locals 10

    .line 177
    iget-object v0, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->optionList:Ljava/util/List;

    .line 383
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 384
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 385
    check-cast v2, Lkotlin/Pair;

    .line 177
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/PollOption;

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 387
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 388
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/narvii/model/PollOption;

    .line 177
    invoke-virtual {v4}, Lcom/narvii/model/PollOption;->isEmpty()Z

    move-result v4

    xor-int/2addr v3, v4

    if-eqz v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 179
    :cond_2
    sget v1, Lcom/narvii/mediaeditor/R$id;->title:I

    invoke-virtual {p0, v1}, Lcom/narvii/scene/poll/ScenePollPostFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const-string v2, "title"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result v1

    const-string v4, "null cannot be cast to non-null type kotlin.CharSequence"

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    sget v1, Lcom/narvii/mediaeditor/R$string;->input_poll_title:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_5

    .line 180
    :cond_3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/narvii/model/PollOption;

    invoke-virtual {v7}, Lcom/narvii/model/PollOption;->firstMedia()Lcom/narvii/model/Media;

    move-result-object v8

    if-eqz v8, :cond_5

    iget-object v7, v7, Lcom/narvii/model/PollOption;->title:Ljava/lang/String;

    invoke-static {v7}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v7, 0x1

    goto :goto_2

    :cond_5
    const/4 v7, 0x0

    :goto_2
    if-eqz v7, :cond_4

    goto :goto_3

    :cond_6
    move-object v6, v5

    :goto_3
    if-eqz v6, :cond_7

    sget v1, Lcom/narvii/mediaeditor/R$string;->poll_incomplete_options:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_5

    .line 390
    :cond_7
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 391
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 392
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 393
    move-object v8, v7

    check-cast v8, Lcom/narvii/model/PollOption;

    .line 181
    iget-object v8, v8, Lcom/narvii/model/PollOption;->title:Ljava/lang/String;

    const-string v9, "it.title"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v8, :cond_9

    invoke-static {v8}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 394
    invoke-virtual {v1, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 395
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 181
    :cond_9
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :cond_a
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-eq v1, v3, :cond_b

    .line 181
    sget v1, Lcom/narvii/mediaeditor/R$string;->poll_dulicate_options:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_5

    :cond_b
    move-object v1, v5

    :goto_5
    if-eqz v1, :cond_c

    .line 186
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 187
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    const v2, 0x104000a

    .line 188
    new-instance v3, Lcom/narvii/scene/poll/ScenePollPostFragment$doSubmit$1;

    invoke-direct {v3, p0, v1}, Lcom/narvii/scene/poll/ScenePollPostFragment$doSubmit$1;-><init>(Lcom/narvii/scene/poll/ScenePollPostFragment;Ljava/lang/Integer;)V

    invoke-virtual {v0, v2, v3}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 194
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    return-void

    .line 198
    :cond_c
    new-instance v1, Lcom/narvii/model/PollAttach;

    invoke-direct {v1}, Lcom/narvii/model/PollAttach;-><init>()V

    .line 199
    sget v3, Lcom/narvii/mediaeditor/R$id;->title:I

    invoke-virtual {p0, v3}, Lcom/narvii/scene/poll/ScenePollPostFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-static {v2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/narvii/model/PollAttach;->title:Ljava/lang/String;

    .line 200
    iput-object v0, v1, Lcom/narvii/model/PollAttach;->polloptList:Ljava/util/List;

    .line 201
    iget-object v0, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    const-string v2, "sceneInfo"

    if-eqz v0, :cond_10

    iget-object v0, v0, Lcom/narvii/scene/model/SceneInfo;->pollAttach:Lcom/narvii/model/PollAttach;

    if-eqz v0, :cond_d

    iget-object v0, v0, Lcom/narvii/model/PollAttach;->attachId:Ljava/lang/String;

    goto :goto_6

    :cond_d
    move-object v0, v5

    :goto_6
    iput-object v0, v1, Lcom/narvii/model/PollAttach;->attachId:Ljava/lang/String;

    .line 202
    iget-object v0, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    if-eqz v0, :cond_f

    iput-object v1, v0, Lcom/narvii/scene/model/SceneInfo;->pollAttach:Lcom/narvii/model/PollAttach;

    .line 204
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 205
    iget-object v1, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    if-eqz v1, :cond_e

    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 206
    invoke-virtual {p0, v1, v0}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 207
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    return-void

    .line 205
    :cond_e
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    .line 202
    :cond_f
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    .line 201
    :cond_10
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    .line 199
    :cond_11
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    goto :goto_8

    :goto_7
    throw v0

    :goto_8
    goto :goto_7
.end method

.method protected getPostObjectType()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method protected isContentEmpty()Z
    .locals 4

    .line 236
    sget v0, Lcom/narvii/mediaeditor/R$id;->title:I

    invoke-virtual {p0, v0}, Lcom/narvii/scene/poll/ScenePollPostFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, "title"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->optionList:Ljava/util/List;

    .line 402
    instance-of v3, v0, Ljava/util/Collection;

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 403
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/Pair;

    .line 236
    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/PollOption;

    invoke-virtual {v3}, Lcom/narvii/model/PollOption;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    if-eqz v3, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method protected isModified()Z
    .locals 6

    .line 220
    iget-object v0, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    const/4 v1, 0x0

    const-string v2, "sceneInfo"

    if-eqz v0, :cond_6

    iget-object v3, v0, Lcom/narvii/scene/model/SceneInfo;->pollAttach:Lcom/narvii/model/PollAttach;

    const/4 v4, 0x1

    if-nez v3, :cond_0

    .line 221
    invoke-virtual {p0}, Lcom/narvii/scene/poll/ScenePollPostFragment;->isContentEmpty()Z

    move-result v0

    xor-int/2addr v0, v4

    return v0

    :cond_0
    if-eqz v0, :cond_5

    .line 223
    iget-object v5, v3, Lcom/narvii/model/PollAttach;->title:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 224
    iget-object v0, v3, Lcom/narvii/model/PollAttach;->polloptList:Ljava/util/List;

    .line 225
    sget v1, Lcom/narvii/mediaeditor/R$id;->title:I

    invoke-virtual {p0, v1}, Lcom/narvii/scene/poll/ScenePollPostFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const-string v2, "title"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    return v4

    .line 228
    :cond_1
    sget-object v1, Lcom/narvii/util/KUtils;->Companion:Lcom/narvii/util/KUtils$Companion;

    iget-object v2, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->optionList:Ljava/util/List;

    .line 398
    new-instance v3, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v2, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 399
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 400
    check-cast v5, Lkotlin/Pair;

    .line 228
    invoke-virtual {v5}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/model/PollOption;

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/narvii/scene/poll/ScenePollPostFragment$isModified$2;->INSTANCE:Lcom/narvii/scene/poll/ScenePollPostFragment$isModified$2;

    invoke-virtual {v1, v3, v0, v2}, Lcom/narvii/util/KUtils$Companion;->isListSame(Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function2;)Z

    move-result v0

    if-nez v0, :cond_3

    return v4

    :cond_3
    const/4 v0, 0x0

    return v0

    .line 224
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 223
    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 220
    :cond_6
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 126
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 127
    :goto_0
    sget v2, Lcom/narvii/mediaeditor/R$id;->add_option:I

    const/4 v3, 0x1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v2, :cond_2

    .line 128
    invoke-static {p0, v0, v3, v0}, Lcom/narvii/scene/poll/ScenePollPostFragment;->addOption$default(Lcom/narvii/scene/poll/ScenePollPostFragment;Lcom/narvii/model/PollOption;ILjava/lang/Object;)V

    goto/16 :goto_5

    .line 130
    :cond_2
    :goto_1
    sget v0, Lcom/narvii/mediaeditor/R$id;->option_delete_iv:I

    const-string v2, "null cannot be cast to non-null type android.view.View"

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v0, :cond_5

    .line 131
    sget v0, Lcom/narvii/mediaeditor/R$id;->poll_option_parent:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/narvii/scene/poll/ScenePollPostFragment;->findIndexForOptionView(Landroid/view/View;)I

    move-result p1

    .line 132
    invoke-direct {p0, p1}, Lcom/narvii/scene/poll/ScenePollPostFragment;->removeOption(I)V

    goto/16 :goto_5

    .line 131
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 134
    :cond_5
    :goto_2
    sget v0, Lcom/narvii/mediaeditor/R$id;->option_image_rl:I

    if-nez v1, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_c

    .line 135
    sget v0, Lcom/narvii/mediaeditor/R$id;->poll_option_parent:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_b

    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/narvii/scene/poll/ScenePollPostFragment;->findIndexForOptionView(Landroid/view/View;)I

    move-result p1

    .line 136
    iget-object v0, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->optionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ltz p1, :cond_a

    if-gt v0, p1, :cond_7

    goto :goto_4

    .line 139
    :cond_7
    iget-object v0, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->optionList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/PollOption;

    iget-object v0, v0, Lcom/narvii/model/PollOption;->mediaList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 140
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_3

    :cond_8
    const/4 v3, 0x0

    .line 141
    :goto_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "type"

    const-string v4, "photo"

    .line 142
    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "index"

    .line 143
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 145
    iget-object p1, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    if-eqz p1, :cond_c

    iget-object v2, p0, Lcom/narvii/scene/SceneBasePostFragment;->draftDir:Ljava/io/File;

    if-eqz v3, :cond_9

    const/16 v1, 0x40

    :cond_9
    or-int/lit8 v1, v1, 0xe

    invoke-virtual {p1, v2, v0, v1}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;I)V

    goto :goto_5

    :cond_a
    :goto_4
    return-void

    .line 135
    :cond_b
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    :goto_5
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 63
    invoke-super {p0, p1}, Lcom/narvii/scene/SceneBasePostFragment;->onCreate(Landroid/os/Bundle;)V

    .line 64
    sget v0, Lcom/narvii/mediaeditor/R$string;->new_poll:I

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    const-string v0, "sceneInfo"

    .line 65
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/narvii/scene/model/SceneInfo;

    invoke-static {v1, v2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "JacksonUtils.readAs(getS\u2026), SceneInfo::class.java)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/narvii/scene/model/SceneInfo;

    iput-object v1, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string v2, "savedPollAttach"

    .line 66
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    .line 67
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 68
    iget-object v2, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    if-eqz v2, :cond_1

    const-class v0, Lcom/narvii/model/PollAttach;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/PollAttach;

    iput-object p1, v2, Lcom/narvii/scene/model/SceneInfo;->pollAttach:Lcom/narvii/model/PollAttach;

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    sget p3, Lcom/narvii/mediaeditor/R$layout;->fragment_scene_poll_post:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 121
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroyView()V

    .line 122
    iget-object v0, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/narvii/media/MediaPickerFragment;->removeOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/scene/poll/ScenePollPostFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 154
    invoke-direct {p0}, Lcom/narvii/scene/poll/ScenePollPostFragment;->updatePollContent()V

    :cond_0
    return-void
.end method

.method public onPickMediaResult(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 1
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

    if-eqz p2, :cond_0

    const-string v0, "index"

    .line 159
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    .line 160
    :goto_0
    iget-object v0, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->optionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ltz p2, :cond_2

    if-gt v0, p2, :cond_1

    goto :goto_1

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->optionList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlin/Pair;

    .line 164
    invoke-virtual {p2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/PollOption;

    iput-object p1, v0, Lcom/narvii/model/PollOption;->mediaList:Ljava/util/List;

    .line 165
    invoke-virtual {p2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-direct {p0, p1, p2}, Lcom/narvii/scene/poll/ScenePollPostFragment;->updateOptionImage(Ljava/util/List;Landroid/view/View;)V

    .line 166
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->invalidateOptionsMenu()V

    :cond_2
    :goto_1
    return-void
.end method

.method protected onPostDeleted()V
    .locals 4

    .line 211
    invoke-super {p0}, Lcom/narvii/scene/SceneBasePostFragment;->onPostDeleted()V

    .line 212
    iget-object v0, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    const-string v1, "sceneInfo"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iput-object v2, v0, Lcom/narvii/scene/model/SceneInfo;->pollAttach:Lcom/narvii/model/PollAttach;

    .line 213
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 214
    iget-object v3, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    if-eqz v3, :cond_0

    invoke-static {v3}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 215
    invoke-virtual {p0, v1, v0}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 216
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    return-void

    .line 214
    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 212
    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 243
    new-instance v0, Lcom/narvii/model/PollAttach;

    invoke-direct {v0}, Lcom/narvii/model/PollAttach;-><init>()V

    .line 244
    sget v1, Lcom/narvii/mediaeditor/R$id;->title:I

    invoke-virtual {p0, v1}, Lcom/narvii/scene/poll/ScenePollPostFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const-string v2, "title"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/model/PollAttach;->title:Ljava/lang/String;

    .line 245
    iget-object v1, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->optionList:Ljava/util/List;

    .line 405
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 406
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 407
    check-cast v3, Lkotlin/Pair;

    .line 246
    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/model/PollOption;

    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    sget v5, Lcom/narvii/mediaeditor/R$id;->option_et:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v5, "pair.second.findViewById<EditText>(R.id.option_et)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/narvii/model/PollOption;->title:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 408
    :cond_0
    iput-object v2, v0, Lcom/narvii/model/PollAttach;->polloptList:Ljava/util/List;

    .line 248
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "savedPollAttach"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-super {p0, p1, p2}, Lcom/narvii/scene/SceneBasePostFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 78
    sget p1, Lcom/narvii/mediaeditor/R$id;->add_option:I

    invoke-virtual {p0, p1}, Lcom/narvii/scene/poll/ScenePollPostFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    const-class v0, Lcom/narvii/media/MediaPickerFragment;

    .line 362
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "clz.simpleName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 363
    invoke-virtual {p1, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 364
    instance-of v3, v2, Lcom/narvii/media/MediaPickerFragment;

    if-nez v3, :cond_0

    goto :goto_0

    .line 375
    :cond_0
    check-cast v2, Lcom/narvii/app/NVFragment;

    goto :goto_1

    .line 365
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 366
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 370
    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 372
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 373
    move-object v2, v0

    check-cast v2, Lcom/narvii/app/NVFragment;

    .line 375
    :goto_1
    move-object p1, v2

    check-cast p1, Lcom/narvii/media/MediaPickerFragment;

    goto :goto_2

    :cond_2
    move-object p1, p2

    :goto_2
    iput-object p1, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 81
    iget-object p1, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p0}, Lcom/narvii/media/MediaPickerFragment;->addOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    .line 83
    :cond_3
    sget p1, Lcom/narvii/mediaeditor/R$id;->root:I

    invoke-virtual {p0, p1}, Lcom/narvii/scene/poll/ScenePollPostFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const-string v0, "root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/narvii/scene/poll/ScenePollPostFragment$onViewCreated$1;

    invoke-direct {v0, p0}, Lcom/narvii/scene/poll/ScenePollPostFragment$onViewCreated$1;-><init>(Lcom/narvii/scene/poll/ScenePollPostFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 96
    sget p1, Lcom/narvii/mediaeditor/R$id;->title:I

    invoke-virtual {p0, p1}, Lcom/narvii/scene/poll/ScenePollPostFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    new-instance v0, Lcom/narvii/widget/EditTextInnerScrollListener;

    invoke-direct {v0}, Lcom/narvii/widget/EditTextInnerScrollListener;-><init>()V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 97
    sget p1, Lcom/narvii/mediaeditor/R$id;->title:I

    invoke-virtual {p0, p1}, Lcom/narvii/scene/poll/ScenePollPostFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iget-object v0, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->textWatcher:Lcom/narvii/scene/poll/ScenePollPostFragment$textWatcher$1;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 98
    sget p1, Lcom/narvii/mediaeditor/R$id;->title:I

    invoke-virtual {p0, p1}, Lcom/narvii/scene/poll/ScenePollPostFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 99
    sget p1, Lcom/narvii/mediaeditor/R$id;->title:I

    invoke-virtual {p0, p1}, Lcom/narvii/scene/poll/ScenePollPostFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/text/method/SingleLineTransformationMethod;

    invoke-direct {v1}, Landroid/text/method/SingleLineTransformationMethod;-><init>()V

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 100
    sget p1, Lcom/narvii/mediaeditor/R$id;->title:I

    invoke-virtual {p0, p1}, Lcom/narvii/scene/poll/ScenePollPostFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v1, v0, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    sget-object v3, Lcom/narvii/scene/poll/ScenePollPostFragment$onViewCreated$2;->INSTANCE:Lcom/narvii/scene/poll/ScenePollPostFragment$onViewCreated$2;

    aput-object v3, v1, v2

    .line 104
    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 100
    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 106
    iget-object p1, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->sceneInfo:Lcom/narvii/scene/model/SceneInfo;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lcom/narvii/scene/model/SceneInfo;->pollAttach:Lcom/narvii/model/PollAttach;

    if-eqz p1, :cond_4

    .line 107
    sget v1, Lcom/narvii/mediaeditor/R$id;->title:I

    invoke-virtual {p0, v1}, Lcom/narvii/scene/poll/ScenePollPostFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iget-object v2, p1, Lcom/narvii/model/PollAttach;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object p1, p1, Lcom/narvii/model/PollAttach;->polloptList:Ljava/util/List;

    const-string v1, "it.polloptList"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 376
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/PollOption;

    .line 109
    invoke-direct {p0, v1}, Lcom/narvii/scene/poll/ScenePollPostFragment;->addOption(Lcom/narvii/model/PollOption;)V

    goto :goto_3

    .line 113
    :cond_4
    iget-object p1, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->optionList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p1, v0, :cond_5

    .line 114
    iget-object p1, p0, Lcom/narvii/scene/poll/ScenePollPostFragment;->optionList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_4
    if-ge p1, v0, :cond_5

    .line 115
    invoke-static {p0, p2, v3, p2}, Lcom/narvii/scene/poll/ScenePollPostFragment;->addOption$default(Lcom/narvii/scene/poll/ScenePollPostFragment;Lcom/narvii/model/PollOption;ILjava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_5
    return-void

    :cond_6
    const-string p1, "sceneInfo"

    .line 106
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw p2

    :goto_6
    goto :goto_5
.end method
