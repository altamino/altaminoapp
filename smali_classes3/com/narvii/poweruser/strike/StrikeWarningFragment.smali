.class public Lcom/narvii/poweruser/strike/StrikeWarningFragment;
.super Lcom/narvii/app/NVFragment;
.source "StrikeWarningFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DURATION_ANIMATION:I = 0xc8

.field private static final QUERY_TYPE_STRIKE:Ljava/lang/String; = "strike"

.field private static final QUERY_TYPE_WARNING:Ljava/lang/String; = "warning"

.field private static final STEP_ENTRY_SELECT:I = 0x0

.field private static final STEP_OPERATION_EDIT:I = 0x1


# instance fields
.field apiService:Lcom/narvii/util/http/ApiService;

.field private btnBack:Landroid/view/View;

.field private btnOperaStrike:Landroid/view/View;

.field private btnOperaWarning:Landroid/view/View;

.field private btnSubmit:Landroid/view/View;

.field private curTemplateContent:Ljava/lang/String;

.field private curTemplateTitle:Ljava/lang/String;

.field private edtStrikeMessage:Landroid/widget/EditText;

.field private entryContainer:Landroid/view/View;

.field private isStrikeMode:Z

.field mObjType:I

.field mObject:Lcom/narvii/model/NVObject;

.field mUser:Lcom/narvii/model/User;

.field mode:I

.field private muteUserContainer:Landroid/view/View;

.field private operationContainer:Landroid/view/View;

.field private sectionStonesHours:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private seekBar:Lcom/narvii/poweruser/SectionSeekBar;

.field private step:I

.field public strikeTemplateError:Ljava/lang/String;

.field public strikeTemplateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/chat/template/MessageTemplate;",
            ">;"
        }
    .end annotation
.end field

.field private strikeTypeContainer:Lcom/narvii/util/layouts/NVFlowLayout;

.field private templateErrorContainer:Landroid/view/View;

.field private templateLoading:Landroid/view/View;

.field templateRequest:Lcom/narvii/util/http/ApiRequest;

.field private tvOperationTag:Landroid/widget/TextView;

.field private tvRecentTime:Landroid/widget/TextView;

.field private tvStrikeCount:Landroid/widget/TextView;

.field private tvTemplateError:Landroid/widget/TextView;

.field private tvWarningCount:Landroid/widget/TextView;

.field userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

.field public warningTemplateError:Ljava/lang/String;

.field public warningTemplateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/chat/template/MessageTemplate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 116
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->sectionStonesHours:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/poweruser/strike/StrikeWarningFragment;)Landroid/util/SparseArray;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->sectionStonesHours:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/poweruser/strike/StrikeWarningFragment;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->updateStrikeWarningHistoryView()V

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/poweruser/strike/StrikeWarningFragment;)Landroid/view/View;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->entryContainer:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/poweruser/strike/StrikeWarningFragment;)Landroid/view/View;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->operationContainer:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/poweruser/strike/StrikeWarningFragment;)Z
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->messageChanged()Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/narvii/poweruser/strike/StrikeWarningFragment;Lcom/narvii/chat/template/MessageTemplate;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->onTemplateSelected(Lcom/narvii/chat/template/MessageTemplate;)V

    return-void
.end method

.method static synthetic access$600(Lcom/narvii/poweruser/strike/StrikeWarningFragment;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->updateStrikeTemplateViews()V

    return-void
.end method

.method private cancelNoticeTemplateRequest()V
    .locals 2

    .line 555
    iget-object v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->templateRequest:Lcom/narvii/util/http/ApiRequest;

    if-eqz v0, :cond_0

    .line 556
    iget-object v1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->apiService:Lcom/narvii/util/http/ApiService;

    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    :cond_0
    const/4 v0, 0x0

    .line 558
    iput-object v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->warningTemplateError:Ljava/lang/String;

    .line 559
    iput-object v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->strikeTemplateError:Ljava/lang/String;

    return-void
.end method

.method private configStones()V
    .locals 4

    .line 292
    iget-object v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->sectionStonesHours:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 293
    iget-object v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->sectionStonesHours:Landroid/util/SparseArray;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 294
    iget-object v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->sectionStonesHours:Landroid/util/SparseArray;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 295
    iget-object v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->sectionStonesHours:Landroid/util/SparseArray;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 296
    iget-object v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->sectionStonesHours:Landroid/util/SparseArray;

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private enterOperationEditPage(Z)V
    .locals 12

    .line 404
    iput-boolean p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->isStrikeMode:Z

    const/4 v0, 0x1

    .line 405
    iput v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->step:I

    if-eqz p1, :cond_0

    const-string p1, "strike"

    goto :goto_0

    :cond_0
    const-string p1, "warning"

    .line 406
    :goto_0
    invoke-direct {p0, p1}, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->sendNoticeTemplateRequest(Ljava/lang/String;)V

    .line 407
    invoke-direct {p0}, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->updateOperationView()V

    .line 409
    new-instance p1, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 411
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 412
    new-instance p1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    :cond_1
    const-wide/16 v0, 0xc8

    .line 415
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 416
    new-instance v2, Lcom/narvii/poweruser/strike/StrikeWarningFragment$6;

    invoke-direct {v2, p0}, Lcom/narvii/poweruser/strike/StrikeWarningFragment$6;-><init>(Lcom/narvii/poweruser/strike/StrikeWarningFragment;)V

    invoke-virtual {p1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 431
    iget-object v2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->entryContainer:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 433
    new-instance p1, Landroid/view/animation/TranslateAnimation;

    const/4 v4, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 435
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 436
    new-instance p1, Landroid/view/animation/TranslateAnimation;

    const/4 v4, 0x1

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 439
    :cond_2
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 440
    new-instance v0, Lcom/narvii/poweruser/strike/StrikeWarningFragment$7;

    invoke-direct {v0, p0}, Lcom/narvii/poweruser/strike/StrikeWarningFragment$7;-><init>(Lcom/narvii/poweruser/strike/StrikeWarningFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const-wide/16 v0, 0x32

    .line 455
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 456
    iget-object v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->operationContainer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private enterOperationSelectPage()V
    .locals 13

    const/4 v0, 0x0

    .line 345
    iput v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->step:I

    const/4 v1, 0x0

    .line 346
    iput-object v1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->curTemplateTitle:Ljava/lang/String;

    .line 347
    iput-object v1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->curTemplateContent:Ljava/lang/String;

    .line 348
    iput-boolean v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->isStrikeMode:Z

    .line 349
    invoke-direct {p0, v1}, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->onTemplateSelected(Lcom/narvii/chat/template/MessageTemplate;)V

    .line 351
    iget-object v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->edtStrikeMessage:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/widget/EditText;)V

    .line 352
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x1

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 354
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 355
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    :cond_0
    const-wide/16 v1, 0xc8

    .line 358
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 359
    new-instance v3, Lcom/narvii/poweruser/strike/StrikeWarningFragment$4;

    invoke-direct {v3, p0}, Lcom/narvii/poweruser/strike/StrikeWarningFragment$4;-><init>(Lcom/narvii/poweruser/strike/StrikeWarningFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 375
    iget-object v3, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->entryContainer:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 377
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 379
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 380
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, -0x40800000    # -1.0f

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 383
    :cond_1
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 384
    new-instance v1, Lcom/narvii/poweruser/strike/StrikeWarningFragment$5;

    invoke-direct {v1, p0}, Lcom/narvii/poweruser/strike/StrikeWarningFragment$5;-><init>(Lcom/narvii/poweruser/strike/StrikeWarningFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 400
    iget-object v1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->operationContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private getAttachObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 6

    .line 724
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    .line 725
    iget-object v1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mObject:Lcom/narvii/model/NVObject;

    invoke-virtual {v1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v1

    const-string v2, "objectId"

    invoke-virtual {v0, v2, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 726
    iget-object v1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mObject:Lcom/narvii/model/NVObject;

    invoke-virtual {v1}, Lcom/narvii/model/NVObject;->objectType()I

    move-result v1

    const-string v2, "objectType"

    invoke-virtual {v0, v2, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 727
    iget-object v1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mObject:Lcom/narvii/model/NVObject;

    invoke-virtual {v1}, Lcom/narvii/model/NVObject;->parentId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 728
    iget-object v1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mObject:Lcom/narvii/model/NVObject;

    invoke-virtual {v1}, Lcom/narvii/model/NVObject;->parentId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "parentId"

    invoke-virtual {v0, v2, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 729
    iget-object v1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mObject:Lcom/narvii/model/NVObject;

    instance-of v2, v1, Lcom/narvii/model/Comment;

    const-string v3, "parentType"

    if-eqz v2, :cond_0

    .line 730
    check-cast v1, Lcom/narvii/model/Comment;

    iget v1, v1, Lcom/narvii/model/Comment;->parentType:I

    invoke-virtual {v0, v3, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    goto :goto_0

    .line 731
    :cond_0
    instance-of v1, v1, Lcom/narvii/model/ChatMessage;

    if-eqz v1, :cond_1

    const/16 v1, 0xc

    .line 732
    invoke-virtual {v0, v3, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 735
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mObject:Lcom/narvii/model/NVObject;

    instance-of v2, v1, Lcom/narvii/model/ChatMessage;

    const-string v3, "mediaList"

    const-string v4, "title"

    if-eqz v2, :cond_2

    .line 736
    check-cast v1, Lcom/narvii/model/ChatMessage;

    iget-object v1, v1, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    invoke-virtual {v0, v4, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 737
    iget-object v1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mObject:Lcom/narvii/model/NVObject;

    check-cast v1, Lcom/narvii/model/ChatMessage;

    invoke-virtual {v1}, Lcom/narvii/model/ChatMessage;->media()Lcom/narvii/model/Media;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 738
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v1

    .line 739
    sget-object v2, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v4, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mObject:Lcom/narvii/model/NVObject;

    check-cast v4, Lcom/narvii/model/ChatMessage;

    invoke-virtual {v4}, Lcom/narvii/model/ChatMessage;->media()Lcom/narvii/model/Media;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    .line 740
    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 741
    invoke-virtual {v0, v3, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    goto :goto_2

    .line 743
    :cond_2
    instance-of v2, v1, Lcom/narvii/model/Comment;

    if-eqz v2, :cond_4

    .line 744
    check-cast v1, Lcom/narvii/model/Comment;

    iget-object v1, v1, Lcom/narvii/model/Comment;->content:Ljava/lang/String;

    invoke-virtual {v0, v4, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 745
    iget-object v1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mObject:Lcom/narvii/model/NVObject;

    move-object v2, v1

    check-cast v2, Lcom/narvii/model/Comment;

    iget-object v2, v2, Lcom/narvii/model/Comment;->mediaList:Ljava/util/List;

    if-eqz v2, :cond_4

    check-cast v1, Lcom/narvii/model/Comment;

    iget-object v1, v1, Lcom/narvii/model/Comment;->mediaList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_4

    .line 746
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v1

    .line 747
    iget-object v2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mObject:Lcom/narvii/model/NVObject;

    check-cast v2, Lcom/narvii/model/Comment;

    iget-object v2, v2, Lcom/narvii/model/Comment;->mediaList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/model/Media;

    .line 748
    sget-object v5, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v5, v4}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v4

    .line 749
    invoke-virtual {v1, v4}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    goto :goto_1

    .line 751
    :cond_3
    invoke-virtual {v0, v3, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    :cond_4
    :goto_2
    return-object v0
.end method

.method private handleBundle(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "attachType"

    .line 617
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mObjType:I

    const-string v0, "attachObject"

    .line 618
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "launchMode"

    const/4 v2, 0x0

    .line 619
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mode:I

    .line 620
    iget p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mObjType:I

    if-eqz p1, :cond_6

    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    const/4 v1, 0x7

    if-eq p1, v1, :cond_2

    const/16 v1, 0xc

    if-eq p1, v1, :cond_1

    const/16 v1, 0x6d

    if-eq p1, v1, :cond_0

    goto/16 :goto_1

    .line 656
    :cond_0
    const-class p1, Lcom/narvii/model/SharedFile;

    invoke-static {v0, p1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/NVObject;

    iput-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mObject:Lcom/narvii/model/NVObject;

    .line 657
    iget-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mObject:Lcom/narvii/model/NVObject;

    if-eqz p1, :cond_8

    .line 658
    check-cast p1, Lcom/narvii/model/SharedFile;

    iget-object p1, p1, Lcom/narvii/model/SharedFile;->author:Lcom/narvii/model/User;

    iput-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mUser:Lcom/narvii/model/User;

    goto/16 :goto_1

    .line 650
    :cond_1
    const-class p1, Lcom/narvii/model/ChatThread;

    invoke-static {v0, p1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/NVObject;

    iput-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mObject:Lcom/narvii/model/NVObject;

    .line 651
    iget-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mObject:Lcom/narvii/model/NVObject;

    if-eqz p1, :cond_8

    .line 652
    check-cast p1, Lcom/narvii/model/ChatThread;

    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->owner()Lcom/narvii/model/User;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mUser:Lcom/narvii/model/User;

    goto :goto_1

    .line 644
    :cond_2
    const-class p1, Lcom/narvii/model/ChatMessage;

    invoke-static {v0, p1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/NVObject;

    iput-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mObject:Lcom/narvii/model/NVObject;

    .line 645
    iget-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mObject:Lcom/narvii/model/NVObject;

    if-eqz p1, :cond_8

    .line 646
    check-cast p1, Lcom/narvii/model/ChatMessage;

    iget-object p1, p1, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    iput-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mUser:Lcom/narvii/model/User;

    goto :goto_1

    .line 638
    :cond_3
    const-class p1, Lcom/narvii/model/Comment;

    invoke-static {v0, p1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/NVObject;

    iput-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mObject:Lcom/narvii/model/NVObject;

    .line 639
    iget-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mObject:Lcom/narvii/model/NVObject;

    if-eqz p1, :cond_8

    .line 640
    check-cast p1, Lcom/narvii/model/Comment;

    iget-object p1, p1, Lcom/narvii/model/Comment;->author:Lcom/narvii/model/User;

    iput-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mUser:Lcom/narvii/model/User;

    goto :goto_1

    .line 632
    :cond_4
    const-class p1, Lcom/narvii/model/Item;

    invoke-static {v0, p1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/NVObject;

    iput-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mObject:Lcom/narvii/model/NVObject;

    .line 633
    iget-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mObject:Lcom/narvii/model/NVObject;

    if-eqz p1, :cond_8

    .line 634
    check-cast p1, Lcom/narvii/model/Item;

    iget-object p1, p1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    iput-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mUser:Lcom/narvii/model/User;

    goto :goto_1

    .line 626
    :cond_5
    const-class p1, Lcom/narvii/model/Blog;

    invoke-static {v0, p1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/NVObject;

    iput-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mObject:Lcom/narvii/model/NVObject;

    .line 627
    iget-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mObject:Lcom/narvii/model/NVObject;

    if-eqz p1, :cond_8

    .line 628
    check-cast p1, Lcom/narvii/model/Blog;

    iget-object p1, p1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    iput-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mUser:Lcom/narvii/model/User;

    goto :goto_1

    .line 622
    :cond_6
    const-class p1, Lcom/narvii/model/User;

    invoke-static {v0, p1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/NVObject;

    iput-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mObject:Lcom/narvii/model/NVObject;

    .line 623
    iget-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mObject:Lcom/narvii/model/NVObject;

    if-eqz p1, :cond_7

    check-cast p1, Lcom/narvii/model/User;

    goto :goto_0

    :cond_7
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mUser:Lcom/narvii/model/User;

    :cond_8
    :goto_1
    return-void
.end method

.method private messageChanged()Z
    .locals 5

    .line 524
    iget-boolean v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->isStrikeMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->strikeTemplateList:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->warningTemplateList:Ljava/util/List;

    .line 525
    :goto_0
    iget-object v1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->curTemplateTitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_4

    if-nez v0, :cond_1

    goto :goto_1

    .line 529
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/chat/template/MessageTemplate;

    .line 530
    iget-object v3, v1, Lcom/narvii/chat/template/MessageTemplate;->title:Ljava/lang/String;

    iget-object v4, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->curTemplateTitle:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 531
    iget-object v0, v1, Lcom/narvii/chat/template/MessageTemplate;->content:Ljava/lang/String;

    iget-object v3, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->edtStrikeMessage:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v1, Lcom/narvii/chat/template/MessageTemplate;->content:Ljava/lang/String;

    .line 532
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->edtStrikeMessage:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const/4 v2, 0x1

    :cond_4
    :goto_1
    return v2
.end method

.method private onTemplateSelected(Lcom/narvii/chat/template/MessageTemplate;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 517
    :cond_0
    iget-object v1, p1, Lcom/narvii/chat/template/MessageTemplate;->title:Ljava/lang/String;

    :goto_0
    iput-object v1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->curTemplateTitle:Ljava/lang/String;

    if-nez p1, :cond_1

    move-object v1, v0

    goto :goto_1

    .line 518
    :cond_1
    iget-object v1, p1, Lcom/narvii/chat/template/MessageTemplate;->content:Ljava/lang/String;

    :goto_1
    iput-object v1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->curTemplateContent:Ljava/lang/String;

    .line 519
    iget-object v1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->edtStrikeMessage:Landroid/widget/EditText;

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, p1, Lcom/narvii/chat/template/MessageTemplate;->content:Ljava/lang/String;

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 520
    invoke-direct {p0}, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->updateTagViews()V

    return-void
.end method

.method private queryUserInfo()V
    .locals 4

    .line 234
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/user-profile/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mUser:Lcom/narvii/model/User;

    invoke-virtual {v2}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    .line 235
    iget-object v1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->apiService:Lcom/narvii/util/http/ApiService;

    new-instance v2, Lcom/narvii/poweruser/strike/StrikeWarningFragment$3;

    const-class v3, Lcom/narvii/model/api/UserResponse;

    invoke-direct {v2, p0, v3}, Lcom/narvii/poweruser/strike/StrikeWarningFragment$3;-><init>(Lcom/narvii/poweruser/strike/StrikeWarningFragment;Ljava/lang/Class;)V

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private sendNoticeTemplateRequest(Ljava/lang/String;)V
    .locals 7

    const-string v0, "warning"

    .line 563
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "strike"

    .line 564
    invoke-static {p1, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 565
    iget-object v3, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->warningTemplateList:Ljava/util/List;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 566
    iget-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->warningTemplateList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/template/MessageTemplate;

    invoke-direct {p0, p1}, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->onTemplateSelected(Lcom/narvii/chat/template/MessageTemplate;)V

    return-void

    :cond_0
    if-eqz v1, :cond_1

    .line 569
    iget-object v3, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->strikeTemplateList:Ljava/util/List;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 570
    iget-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->strikeTemplateList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/template/MessageTemplate;

    invoke-direct {p0, p1}, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->onTemplateSelected(Lcom/narvii/chat/template/MessageTemplate;)V

    return-void

    .line 574
    :cond_1
    invoke-direct {p0}, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->updateStrikeTemplateViews()V

    const-string v3, "config"

    .line 575
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/config/ConfigService;

    const-string v4, "community"

    .line 576
    invoke-virtual {p0, v4}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/community/CommunityService;

    .line 577
    invoke-virtual {v3}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_0

    .line 578
    :cond_2
    iget-object v3, v3, Lcom/narvii/model/Community;->primaryLanguage:Ljava/lang/String;

    .line 579
    :goto_0
    new-instance v4, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v4}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/notice/message-template/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 580
    invoke-virtual {v4, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 581
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "Accept-Language"

    aput-object v6, v4, v5

    aput-object v3, v4, v2

    .line 582
    invoke-virtual {p1, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->headers([Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 584
    :cond_3
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    const-string v2, "api"

    .line 585
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/util/http/ApiService;

    .line 586
    new-instance v3, Lcom/narvii/poweruser/strike/StrikeWarningFragment$9;

    const-class v4, Lcom/narvii/chat/template/MessageTemplateListResponse;

    invoke-direct {v3, p0, v4, v1, v0}, Lcom/narvii/poweruser/strike/StrikeWarningFragment$9;-><init>(Lcom/narvii/poweruser/strike/StrikeWarningFragment;Ljava/lang/Class;ZZ)V

    invoke-virtual {v2, p1, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private sendStrike()V
    .locals 6

    .line 667
    iget-object v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->edtStrikeMessage:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 668
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    goto/16 :goto_2

    .line 676
    :cond_0
    new-instance v1, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 677
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 679
    new-instance v2, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v2}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 680
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    const-string v3, "/notice"

    .line 681
    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    .line 682
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v3

    .line 683
    iget-object v4, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mObject:Lcom/narvii/model/NVObject;

    invoke-virtual {v4}, Lcom/narvii/model/NVObject;->uid()Ljava/lang/String;

    move-result-object v4

    const-string v5, "uid"

    invoke-virtual {v3, v5, v4}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 684
    iget-object v4, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->curTemplateTitle:Ljava/lang/String;

    const-string v5, "title"

    invoke-virtual {v3, v5, v4}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v4, "content"

    .line 685
    invoke-virtual {v3, v4, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 686
    invoke-direct {p0}, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->getAttachObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v4

    const-string v5, "attachedObject"

    invoke-virtual {v3, v5, v4}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 687
    iget-boolean v4, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->isStrikeMode:Z

    const-string v5, "penaltyType"

    invoke-virtual {v3, v5, v4}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 688
    iget-boolean v4, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->isStrikeMode:Z

    if-eqz v4, :cond_2

    .line 689
    iget-object v4, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->sectionStonesHours:Landroid/util/SparseArray;

    iget-object v5, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->seekBar:Lcom/narvii/poweruser/SectionSeekBar;

    invoke-virtual {v5}, Lcom/narvii/poweruser/SectionSeekBar;->getProgress()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    const/16 v5, 0xe10

    if-nez v4, :cond_1

    goto :goto_0

    .line 690
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int/lit16 v5, v4, 0xe10

    :goto_0
    const-string v4, "penaltyValue"

    invoke-virtual {v3, v4, v5}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 692
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 693
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    const-string v4, "adminOpNote"

    .line 695
    invoke-virtual {v3, v4, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 697
    :cond_3
    iget-boolean v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->isStrikeMode:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    goto :goto_1

    :cond_4
    const/4 v0, 0x7

    :goto_1
    const-string v4, "noticeType"

    invoke-virtual {v3, v4, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 699
    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->body(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/narvii/util/http/ApiRequest$Builder;

    const/16 v0, 0x7d0

    .line 700
    invoke-virtual {v2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->timeout(I)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string v0, "api"

    .line 701
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 702
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v2

    new-instance v3, Lcom/narvii/poweruser/strike/StrikeWarningFragment$10;

    const-class v4, Lcom/narvii/model/api/ApiResponse;

    invoke-direct {v3, p0, v4, v1}, Lcom/narvii/poweruser/strike/StrikeWarningFragment$10;-><init>(Lcom/narvii/poweruser/strike/StrikeWarningFragment;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;)V

    invoke-virtual {v0, v2, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void

    .line 669
    :cond_5
    :goto_2
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0e96

    .line 670
    invoke-virtual {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    const v1, 0x104000a

    const/4 v2, 0x0

    .line 671
    invoke-virtual {v0, v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 672
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method

.method private updateOperationView()V
    .locals 3

    .line 460
    iget-object v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->tvOperationTag:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 461
    iget-object v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->tvOperationTag:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->isStrikeMode:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0f1063

    goto :goto_0

    :cond_0
    const v1, 0x7f0f1188

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 462
    iget-object v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->tvOperationTag:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->isStrikeMode:Z

    if-eqz v2, :cond_1

    const v2, 0x7f0807b5

    goto :goto_1

    :cond_1
    const v2, 0x7f0807b6

    :goto_1
    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 463
    iget-object v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->muteUserContainer:Landroid/view/View;

    iget-boolean v1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->isStrikeMode:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    const/4 v1, 0x4

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateStrikeTemplateViews()V
    .locals 8

    .line 467
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 471
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->isStrikeMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->strikeTemplateError:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->warningTemplateError:Ljava/lang/String;

    .line 472
    :goto_0
    iget-boolean v1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->isStrikeMode:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->strikeTemplateList:Ljava/util/List;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->warningTemplateList:Ljava/util/List;

    .line 473
    :goto_1
    iget-object v2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->templateLoading:Landroid/view/View;

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-nez v1, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    goto :goto_2

    :cond_3
    const/16 v5, 0x8

    :goto_2
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 474
    iget-object v2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->templateErrorContainer:Landroid/view/View;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    const/4 v5, 0x0

    goto :goto_3

    :cond_4
    const/16 v5, 0x8

    :goto_3
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 475
    iget-object v2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->tvTemplateError:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 476
    iget-object v2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->strikeTypeContainer:Lcom/narvii/util/layouts/NVFlowLayout;

    if-eqz v1, :cond_5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v3, 0x0

    :cond_5
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-eqz v1, :cond_9

    .line 479
    iget-object v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->strikeTypeContainer:Lcom/narvii/util/layouts/NVFlowLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 480
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/chat/template/MessageTemplate;

    .line 481
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v5, 0x7f0b0453

    iget-object v6, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->strikeTypeContainer:Lcom/narvii/util/layouts/NVFlowLayout;

    invoke-virtual {v3, v5, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 482
    iget-object v5, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->curTemplateTitle:Ljava/lang/String;

    iget-object v6, v2, Lcom/narvii/chat/template/MessageTemplate;->title:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const v6, 0x7f0902d0

    .line 483
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 484
    iget-object v7, v2, Lcom/narvii/chat/template/MessageTemplate;->title:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v5, :cond_6

    const/4 v7, -0x1

    goto :goto_5

    :cond_6
    const v7, -0x8e8c87

    .line 485
    :goto_5
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 486
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    if-eqz v5, :cond_7

    const v5, 0x7f0807b8

    goto :goto_6

    :cond_7
    const v5, 0x7f0807b7

    :goto_6
    invoke-static {v7, v5}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 487
    new-instance v5, Lcom/narvii/poweruser/strike/StrikeWarningFragment$8;

    invoke-direct {v5, p0, v2}, Lcom/narvii/poweruser/strike/StrikeWarningFragment$8;-><init>(Lcom/narvii/poweruser/strike/StrikeWarningFragment;Lcom/narvii/chat/template/MessageTemplate;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f090afd

    .line 508
    iget-object v2, v2, Lcom/narvii/chat/template/MessageTemplate;->title:Ljava/lang/String;

    invoke-virtual {v3, v5, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 509
    iget-object v2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->strikeTypeContainer:Lcom/narvii/util/layouts/NVFlowLayout;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_4

    .line 511
    :cond_8
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/template/MessageTemplate;

    invoke-direct {p0, v0}, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->onTemplateSelected(Lcom/narvii/chat/template/MessageTemplate;)V

    :cond_9
    return-void
.end method

.method private updateStrikeWarningHistoryView()V
    .locals 8

    .line 253
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 254
    iget-object v1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mUser:Lcom/narvii/model/User;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/narvii/model/User;->getStrikeCount()I

    move-result v1

    :goto_0
    const v3, 0x7f0f0cd9

    .line 255
    invoke-virtual {p0, v3}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0f0c08

    const v6, -0xff3183

    const/4 v7, 0x1

    if-ge v1, v7, :cond_1

    new-array v3, v7, [Ljava/lang/Object;

    .line 259
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-virtual {p0, v5, v3}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    if-ne v1, v7, :cond_2

    const v6, -0xa59dd

    .line 262
    invoke-virtual {p0, v3}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    if-le v1, v7, :cond_3

    const v6, -0x2ffde5

    new-array v3, v7, [Ljava/lang/Object;

    .line 265
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-virtual {p0, v5, v3}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 267
    :cond_3
    :goto_1
    invoke-virtual {v0, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 268
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v1, v3}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 269
    iget-object v1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->tvStrikeCount:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    iget-object v1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->tvStrikeCount:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 271
    iget-object v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->tvStrikeCount:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mUser:Lcom/narvii/model/User;

    iget-object v1, v1, Lcom/narvii/model/User;->adminInfo:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-nez v1, :cond_4

    const/4 v1, 0x4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 273
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const v1, -0x8800

    .line 274
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 275
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 277
    iget-object v1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mUser:Lcom/narvii/model/User;

    invoke-virtual {v1}, Lcom/narvii/model/User;->getWarningCount()I

    move-result v1

    if-ne v1, v7, :cond_5

    const v3, 0x7f0f0cde

    .line 278
    invoke-virtual {p0, v3}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_5
    const v3, 0x7f0f0c0d

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mUser:Lcom/narvii/model/User;

    .line 279
    invoke-virtual {v5}, Lcom/narvii/model/User;->getWarningCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {p0, v3, v4}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 280
    :goto_3
    iget-object v4, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->tvWarningCount:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    iget-object v3, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->tvWarningCount:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 282
    iget-object v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->tvWarningCount:Landroid/widget/TextView;

    const/16 v3, 0x8

    if-nez v1, :cond_6

    const/16 v1, 0x8

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 284
    iget-object v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mUser:Lcom/narvii/model/User;

    invoke-virtual {v0}, Lcom/narvii/model/User;->getLastWarningOrStrikeTime()Ljava/util/Date;

    move-result-object v0

    .line 285
    iget-object v1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->tvRecentTime:Landroid/widget/TextView;

    if-nez v0, :cond_7

    const/4 v4, 0x0

    goto :goto_5

    :cond_7
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/narvii/util/DateTimeFormatter;->getInstance(Landroid/content/Context;)Lcom/narvii/util/DateTimeFormatter;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/narvii/util/DateTimeFormatter;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    :goto_5
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->tvRecentTime:Landroid/widget/TextView;

    if-nez v0, :cond_8

    const/16 v2, 0x8

    :cond_8
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private updateTagViews()V
    .locals 4

    .line 539
    iget-object v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->strikeTypeContainer:Lcom/narvii/util/layouts/NVFlowLayout;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v0, 0x0

    .line 543
    :goto_0
    iget-object v1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->strikeTypeContainer:Lcom/narvii/util/layouts/NVFlowLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 544
    iget-object v1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->strikeTypeContainer:Lcom/narvii/util/layouts/NVFlowLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090afd

    .line 545
    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    .line 546
    iget-object v3, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->curTemplateTitle:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const v3, 0x7f0902d0

    .line 547
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    const/4 v3, -0x1

    goto :goto_1

    :cond_1
    const v3, -0x8e8c87

    .line 548
    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 549
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v2, :cond_2

    const v2, 0x7f0807b8

    goto :goto_2

    :cond_2
    const v2, 0x7f0807b7

    :goto_2
    invoke-static {v3, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 3

    .line 335
    iget v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->step:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 336
    iput v1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->step:I

    .line 337
    invoke-direct {p0}, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->cancelNoticeTemplateRequest()V

    .line 338
    invoke-direct {p0}, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->enterOperationSelectPage()V

    return v2

    :cond_0
    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 301
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const/4 p1, 0x0

    .line 324
    iput-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->warningTemplateError:Ljava/lang/String;

    .line 325
    iput-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->strikeTemplateError:Ljava/lang/String;

    .line 326
    iput-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->warningTemplateList:Ljava/util/List;

    .line 327
    iput-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->strikeTemplateList:Ljava/util/List;

    .line 328
    iget-boolean p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->isStrikeMode:Z

    if-eqz p1, :cond_0

    const-string p1, "strike"

    goto :goto_0

    :cond_0
    const-string p1, "warning"

    :goto_0
    invoke-direct {p0, p1}, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->sendNoticeTemplateRequest(Ljava/lang/String;)V

    goto :goto_1

    .line 312
    :sswitch_1
    invoke-direct {p0}, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->sendStrike()V

    goto :goto_1

    :sswitch_2
    const/4 p1, 0x0

    .line 316
    invoke-direct {p0, p1}, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->enterOperationEditPage(Z)V

    goto :goto_1

    :sswitch_3
    const/4 p1, 0x1

    .line 320
    invoke-direct {p0, p1}, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->enterOperationEditPage(Z)V

    goto :goto_1

    .line 303
    :sswitch_4
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 304
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 308
    :sswitch_5
    invoke-direct {p0}, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->enterOperationSelectPage()V

    :cond_1
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f090102 -> :sswitch_5
        0x7f090209 -> :sswitch_4
        0x7f0907ce -> :sswitch_3
        0x7f0907cf -> :sswitch_2
        0x7f090b13 -> :sswitch_1
        0x7f090b51 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 125
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "api"

    .line 126
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    iput-object v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->apiService:Lcom/narvii/util/http/ApiService;

    .line 127
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    invoke-direct {p0, v0}, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->handleBundle(Landroid/os/Bundle;)V

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "strikeList"

    .line 132
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/chat/template/MessageTemplate;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->strikeTemplateList:Ljava/util/List;

    const-string v0, "warningList"

    .line 133
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/chat/template/MessageTemplate;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->warningTemplateList:Ljava/util/List;

    .line 135
    :cond_1
    invoke-direct {p0}, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->configStones()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b02df

    const/4 v0, 0x0

    .line 149
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 140
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 141
    iget-object v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->strikeTemplateList:Ljava/util/List;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "strikeList"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->warningTemplateList:Ljava/util/List;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "warningList"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 154
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 155
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Lcom/narvii/util/AndroidBug5497Workaround;->assistActivity(Landroid/app/Activity;)V

    const p2, 0x7f090209

    .line 158
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090c10

    .line 159
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/UserAvatarLayout;

    iput-object p2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    .line 160
    iget-object p2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    iget-object v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mUser:Lcom/narvii/model/User;

    invoke-virtual {p2, v0}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    const p2, 0x7f090764

    .line 162
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/NicknameView;

    .line 163
    iget-object v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mUser:Lcom/narvii/model/User;

    invoke-virtual {p2, v0}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    const p2, 0x7f090af8

    .line 165
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->tvStrikeCount:Landroid/widget/TextView;

    const p2, 0x7f090cf9

    .line 166
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->tvWarningCount:Landroid/widget/TextView;

    const p2, 0x7f090931

    .line 167
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->tvRecentTime:Landroid/widget/TextView;

    .line 168
    invoke-direct {p0}, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->updateStrikeWarningHistoryView()V

    const p2, 0x7f0903f9

    .line 171
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->entryContainer:Landroid/view/View;

    .line 172
    iget-object p2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->entryContainer:Landroid/view/View;

    const v0, 0x7f0907cf

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->btnOperaWarning:Landroid/view/View;

    .line 173
    iget-object p2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->btnOperaWarning:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object p2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->entryContainer:Landroid/view/View;

    const v0, 0x7f0907ce

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->btnOperaStrike:Landroid/view/View;

    .line 175
    iget-object p2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->btnOperaStrike:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0907d0

    .line 178
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->operationContainer:Landroid/view/View;

    .line 179
    iget-object p2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->operationContainer:Landroid/view/View;

    const v0, 0x7f0907d4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->tvOperationTag:Landroid/widget/TextView;

    .line 180
    iget-object p2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->operationContainer:Landroid/view/View;

    const v0, 0x7f090aff

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/util/layouts/NVFlowLayout;

    iput-object p2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->strikeTypeContainer:Lcom/narvii/util/layouts/NVFlowLayout;

    .line 181
    iget-object p2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->operationContainer:Landroid/view/View;

    const v0, 0x7f090af9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->edtStrikeMessage:Landroid/widget/EditText;

    .line 182
    iget-object p2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->edtStrikeMessage:Landroid/widget/EditText;

    new-instance v0, Lcom/narvii/poweruser/strike/StrikeWarningFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/poweruser/strike/StrikeWarningFragment$1;-><init>(Lcom/narvii/poweruser/strike/StrikeWarningFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 196
    iget-object p2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->operationContainer:Landroid/view/View;

    const v0, 0x7f0909fb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/poweruser/SectionSeekBar;

    iput-object p2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->seekBar:Lcom/narvii/poweruser/SectionSeekBar;

    .line 197
    iget-object p2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->seekBar:Lcom/narvii/poweruser/SectionSeekBar;

    new-instance v0, Lcom/narvii/poweruser/strike/StrikeWarningFragment$2;

    invoke-direct {v0, p0}, Lcom/narvii/poweruser/strike/StrikeWarningFragment$2;-><init>(Lcom/narvii/poweruser/strike/StrikeWarningFragment;)V

    invoke-virtual {p2, v0}, Lcom/narvii/poweruser/SectionSeekBar;->setCustomSectionTextArray(Lcom/narvii/poweruser/SectionSeekBar$CustomSectionTextArray;)V

    .line 209
    iget-object p2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->operationContainer:Landroid/view/View;

    const v0, 0x7f090102

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->btnBack:Landroid/view/View;

    .line 210
    iget-object p2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->btnBack:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    iget-object p2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->operationContainer:Landroid/view/View;

    const v0, 0x7f090b13

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->btnSubmit:Landroid/view/View;

    .line 212
    iget-object p2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->btnSubmit:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090743

    .line 215
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->muteUserContainer:Landroid/view/View;

    const p2, 0x7f090b51

    .line 218
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->templateErrorContainer:Landroid/view/View;

    .line 219
    iget-object p2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->templateErrorContainer:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090b52

    .line 220
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->templateLoading:Landroid/view/View;

    const v0, 0x7f0903fb

    .line 221
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->tvTemplateError:Landroid/widget/TextView;

    .line 222
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->templateLoading:Landroid/view/View;

    .line 224
    iget-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->operationContainer:Landroid/view/View;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 225
    iget-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->entryContainer:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 227
    iget-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mUser:Lcom/narvii/model/User;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/narvii/model/User;->adminInfo:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-nez p1, :cond_0

    .line 228
    invoke-direct {p0}, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->queryUserInfo()V

    :cond_0
    return-void
.end method
