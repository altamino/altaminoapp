.class public Lcom/narvii/poweruser/strike/StrikeWarningFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Landroid/util/SparseArray;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->sectionStonesHours:Landroid/util/SparseArray;

    .line 11
    return-void
.end method

.method private cancelNoticeTemplateRequest()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->templateRequest:Lcom/narvii/util/http/ApiRequest;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->apiService:Lcom/narvii/util/http/ApiService;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->warningTemplateError:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->strikeTemplateError:Ljava/lang/String;

    .line 15
    return-void
.end method

.method private configStones()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->sectionStonesHours:Landroid/util/SparseArray;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object v2

    .line 8
    const/4 v3, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->sectionStonesHours:Landroid/util/SparseArray;

    .line 14
    const/4 v2, 0x3

    .line 15
    .line 16
    .line 17
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object v3

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->sectionStonesHours:Landroid/util/SparseArray;

    .line 24
    const/4 v1, 0x6

    .line 25
    .line 26
    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    move-result-object v1

    .line 29
    const/4 v3, 0x2

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 33
    .line 34
    iget-object v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->sectionStonesHours:Landroid/util/SparseArray;

    .line 35
    .line 36
    const/16 v1, 0xc

    .line 37
    .line 38
    .line 39
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 44
    .line 45
    iget-object v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->sectionStonesHours:Landroid/util/SparseArray;

    .line 46
    .line 47
    const/16 v1, 0x18

    .line 48
    .line 49
    .line 50
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    move-result-object v1

    .line 52
    const/4 v2, 0x4

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 56
    return-void
.end method

.method private enterOperationEditPage(Z)V
    .locals 12

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->isStrikeMode:Z

    .line 3
    const/4 v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->step:I

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const-string p1, "strike"

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    const-string p1, "warning"

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-direct {p0, p1}, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->sendNoticeTemplateRequest(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->updateOperationView()V

    .line 19
    .line 20
    new-instance p1, Landroid/view/animation/TranslateAnimation;

    .line 21
    const/4 v1, 0x1

    .line 22
    const/4 v2, 0x0

    .line 23
    const/4 v3, 0x1

    .line 24
    .line 25
    const/high16 v4, -0x40800000    # -1.0f

    .line 26
    const/4 v5, 0x1

    .line 27
    const/4 v6, 0x0

    .line 28
    const/4 v7, 0x1

    .line 29
    const/4 v8, 0x0

    .line 30
    move-object v0, p1

    .line 31
    .line 32
    .line 33
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 34
    .line 35
    .line 36
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 37
    move-result v0

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    new-instance p1, Landroid/view/animation/TranslateAnimation;

    .line 42
    const/4 v2, 0x1

    .line 43
    const/4 v3, 0x0

    .line 44
    const/4 v4, 0x1

    .line 45
    .line 46
    const/high16 v5, 0x3f800000    # 1.0f

    .line 47
    const/4 v6, 0x1

    .line 48
    const/4 v7, 0x0

    .line 49
    const/4 v8, 0x1

    .line 50
    const/4 v9, 0x0

    .line 51
    move-object v1, p1

    .line 52
    .line 53
    .line 54
    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 55
    .line 56
    :cond_1
    const-wide/16 v0, 0xc8

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 60
    .line 61
    new-instance v2, Lcom/narvii/poweruser/strike/StrikeWarningFragment$6;

    .line 62
    .line 63
    .line 64
    invoke-direct {v2, p0}, Lcom/narvii/poweruser/strike/StrikeWarningFragment$6;-><init>(Lcom/narvii/poweruser/strike/StrikeWarningFragment;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 68
    .line 69
    iget-object v2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->entryContainer:Landroid/view/View;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 73
    .line 74
    new-instance p1, Landroid/view/animation/TranslateAnimation;

    .line 75
    const/4 v4, 0x1

    .line 76
    .line 77
    const/high16 v5, 0x3f800000    # 1.0f

    .line 78
    const/4 v6, 0x1

    .line 79
    const/4 v7, 0x0

    .line 80
    const/4 v8, 0x1

    .line 81
    const/4 v9, 0x0

    .line 82
    const/4 v10, 0x1

    .line 83
    const/4 v11, 0x0

    .line 84
    move-object v3, p1

    .line 85
    .line 86
    .line 87
    invoke-direct/range {v3 .. v11}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 88
    .line 89
    .line 90
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 91
    move-result v2

    .line 92
    .line 93
    if-eqz v2, :cond_2

    .line 94
    .line 95
    new-instance p1, Landroid/view/animation/TranslateAnimation;

    .line 96
    const/4 v4, 0x1

    .line 97
    .line 98
    const/high16 v5, -0x40800000    # -1.0f

    .line 99
    const/4 v6, 0x1

    .line 100
    const/4 v7, 0x0

    .line 101
    const/4 v8, 0x1

    .line 102
    const/4 v9, 0x0

    .line 103
    const/4 v10, 0x1

    .line 104
    const/4 v11, 0x0

    .line 105
    move-object v3, p1

    .line 106
    .line 107
    .line 108
    invoke-direct/range {v3 .. v11}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 109
    .line 110
    .line 111
    :cond_2
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 112
    .line 113
    new-instance v0, Lcom/narvii/poweruser/strike/StrikeWarningFragment$7;

    .line 114
    .line 115
    .line 116
    invoke-direct {v0, p0}, Lcom/narvii/poweruser/strike/StrikeWarningFragment$7;-><init>(Lcom/narvii/poweruser/strike/StrikeWarningFragment;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 120
    .line 121
    const-wide/16 v0, 0x32

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 125
    .line 126
    iget-object v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->operationContainer:Landroid/view/View;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 130
    return-void
.end method

.method private enterOperationSelectPage()V
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->step:I

    .line 4
    const/4 v1, 0x0

    .line 5
    .line 6
    iput-object v1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->curTemplateTitle:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->curTemplateContent:Ljava/lang/String;

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->isStrikeMode:Z

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v1}, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->onTemplateSelected(Lcom/narvii/chat/template/MessageTemplate;)V

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->edtStrikeMessage:Landroid/widget/EditText;

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/widget/EditText;)V

    .line 19
    .line 20
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .line 21
    const/4 v2, 0x1

    .line 22
    .line 23
    const/high16 v3, -0x40800000    # -1.0f

    .line 24
    const/4 v4, 0x1

    .line 25
    const/4 v5, 0x0

    .line 26
    const/4 v6, 0x1

    .line 27
    const/4 v7, 0x0

    .line 28
    const/4 v8, 0x1

    .line 29
    const/4 v9, 0x0

    .line 30
    move-object v1, v0

    .line 31
    .line 32
    .line 33
    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 34
    .line 35
    .line 36
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 37
    move-result v1

    .line 38
    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .line 42
    const/4 v3, 0x1

    .line 43
    .line 44
    const/high16 v4, 0x3f800000    # 1.0f

    .line 45
    const/4 v5, 0x1

    .line 46
    const/4 v6, 0x0

    .line 47
    const/4 v7, 0x1

    .line 48
    const/4 v8, 0x0

    .line 49
    const/4 v9, 0x1

    .line 50
    const/4 v10, 0x0

    .line 51
    move-object v2, v0

    .line 52
    .line 53
    .line 54
    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 55
    .line 56
    :cond_0
    const-wide/16 v1, 0xc8

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 60
    .line 61
    new-instance v3, Lcom/narvii/poweruser/strike/StrikeWarningFragment$4;

    .line 62
    .line 63
    .line 64
    invoke-direct {v3, p0}, Lcom/narvii/poweruser/strike/StrikeWarningFragment$4;-><init>(Lcom/narvii/poweruser/strike/StrikeWarningFragment;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 68
    .line 69
    iget-object v3, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->entryContainer:Landroid/view/View;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 73
    .line 74
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .line 75
    const/4 v5, 0x1

    .line 76
    const/4 v6, 0x0

    .line 77
    const/4 v7, 0x1

    .line 78
    .line 79
    const/high16 v8, 0x3f800000    # 1.0f

    .line 80
    const/4 v9, 0x1

    .line 81
    const/4 v10, 0x0

    .line 82
    const/4 v11, 0x1

    .line 83
    const/4 v12, 0x0

    .line 84
    move-object v4, v0

    .line 85
    .line 86
    .line 87
    invoke-direct/range {v4 .. v12}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 88
    .line 89
    .line 90
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 91
    move-result v3

    .line 92
    .line 93
    if-eqz v3, :cond_1

    .line 94
    .line 95
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .line 96
    const/4 v5, 0x1

    .line 97
    const/4 v6, 0x0

    .line 98
    const/4 v7, 0x1

    .line 99
    .line 100
    const/high16 v8, -0x40800000    # -1.0f

    .line 101
    const/4 v9, 0x1

    .line 102
    const/4 v10, 0x0

    .line 103
    const/4 v11, 0x1

    .line 104
    const/4 v12, 0x0

    .line 105
    move-object v4, v0

    .line 106
    .line 107
    .line 108
    invoke-direct/range {v4 .. v12}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 109
    .line 110
    .line 111
    :cond_1
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 112
    .line 113
    new-instance v1, Lcom/narvii/poweruser/strike/StrikeWarningFragment$5;

    .line 114
    .line 115
    .line 116
    invoke-direct {v1, p0}, Lcom/narvii/poweruser/strike/StrikeWarningFragment$5;-><init>(Lcom/narvii/poweruser/strike/StrikeWarningFragment;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 120
    .line 121
    iget-object v1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->operationContainer:Landroid/view/View;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 125
    return-void
.end method

.method private getAttachObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mObject:Lcom/narvii/model/NVObject;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    const-string v2, "objectId"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v2, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mObject:Lcom/narvii/model/NVObject;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/narvii/model/NVObject;->objectType()I

    .line 21
    move-result v1

    .line 22
    .line 23
    const-string v2, "objectType"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v2, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mObject:Lcom/narvii/model/NVObject;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/narvii/model/NVObject;->parentId()Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    .line 35
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    move-result v1

    .line 37
    .line 38
    if-nez v1, :cond_1

    .line 39
    .line 40
    iget-object v1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mObject:Lcom/narvii/model/NVObject;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/narvii/model/NVObject;->parentId()Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    const-string v2, "parentId"

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v2, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 50
    .line 51
    iget-object v1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mObject:Lcom/narvii/model/NVObject;

    .line 52
    .line 53
    instance-of v2, v1, Lcom/narvii/model/Comment;

    .line 54
    .line 55
    const-string v3, "parentType"

    .line 56
    .line 57
    if-eqz v2, :cond_0

    .line 58
    .line 59
    check-cast v1, Lcom/narvii/model/Comment;

    .line 60
    .line 61
    iget v1, v1, Lcom/narvii/model/Comment;->parentType:I

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v3, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 65
    goto :goto_0

    .line 66
    .line 67
    :cond_0
    instance-of v1, v1, Lcom/narvii/model/ChatMessage;

    .line 68
    .line 69
    if-eqz v1, :cond_1

    .line 70
    .line 71
    const/16 v1, 0xc

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v3, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 75
    .line 76
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mObject:Lcom/narvii/model/NVObject;

    .line 77
    .line 78
    instance-of v2, v1, Lcom/narvii/model/ChatMessage;

    .line 79
    .line 80
    const-string v3, "mediaList"

    .line 81
    .line 82
    const-string v4, "title"

    .line 83
    .line 84
    if-eqz v2, :cond_2

    .line 85
    .line 86
    check-cast v1, Lcom/narvii/model/ChatMessage;

    .line 87
    .line 88
    iget-object v1, v1, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v4, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 92
    .line 93
    iget-object v1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mObject:Lcom/narvii/model/NVObject;

    .line 94
    .line 95
    check-cast v1, Lcom/narvii/model/ChatMessage;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1}, Lcom/narvii/model/ChatMessage;->media()Lcom/narvii/model/Media;

    .line 99
    move-result-object v1

    .line 100
    .line 101
    if-eqz v1, :cond_4

    .line 102
    .line 103
    .line 104
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 105
    move-result-object v1

    .line 106
    .line 107
    sget-object v2, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 108
    .line 109
    iget-object v4, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mObject:Lcom/narvii/model/NVObject;

    .line 110
    .line 111
    check-cast v4, Lcom/narvii/model/ChatMessage;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v4}, Lcom/narvii/model/ChatMessage;->media()Lcom/narvii/model/Media;

    .line 115
    move-result-object v4

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2, v4}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 119
    move-result-object v2

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v3, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 126
    goto :goto_2

    .line 127
    .line 128
    :cond_2
    instance-of v2, v1, Lcom/narvii/model/Comment;

    .line 129
    .line 130
    if-eqz v2, :cond_4

    .line 131
    .line 132
    check-cast v1, Lcom/narvii/model/Comment;

    .line 133
    .line 134
    iget-object v1, v1, Lcom/narvii/model/Comment;->content:Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v4, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 138
    .line 139
    iget-object v1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mObject:Lcom/narvii/model/NVObject;

    .line 140
    move-object v2, v1

    .line 141
    .line 142
    check-cast v2, Lcom/narvii/model/Comment;

    .line 143
    .line 144
    iget-object v2, v2, Lcom/narvii/model/Comment;->mediaList:Ljava/util/List;

    .line 145
    .line 146
    if-eqz v2, :cond_4

    .line 147
    .line 148
    check-cast v1, Lcom/narvii/model/Comment;

    .line 149
    .line 150
    iget-object v1, v1, Lcom/narvii/model/Comment;->mediaList:Ljava/util/List;

    .line 151
    .line 152
    .line 153
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 154
    move-result v1

    .line 155
    .line 156
    if-eqz v1, :cond_4

    .line 157
    .line 158
    .line 159
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 160
    move-result-object v1

    .line 161
    .line 162
    iget-object v2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mObject:Lcom/narvii/model/NVObject;

    .line 163
    .line 164
    check-cast v2, Lcom/narvii/model/Comment;

    .line 165
    .line 166
    iget-object v2, v2, Lcom/narvii/model/Comment;->mediaList:Ljava/util/List;

    .line 167
    .line 168
    .line 169
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 170
    move-result-object v2

    .line 171
    .line 172
    .line 173
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 174
    move-result v4

    .line 175
    .line 176
    if-eqz v4, :cond_3

    .line 177
    .line 178
    .line 179
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 180
    move-result-object v4

    .line 181
    .line 182
    check-cast v4, Lcom/narvii/model/Media;

    .line 183
    .line 184
    sget-object v5, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v5, v4}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 188
    move-result-object v4

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1, v4}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 192
    goto :goto_1

    .line 193
    .line 194
    .line 195
    :cond_3
    invoke-virtual {v0, v3, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 196
    :cond_4
    :goto_2
    return-object v0
.end method

.method private handleBundle(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    .line 2
    const-string v0, "attachType"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 6
    move-result v0

    .line 7
    .line 8
    iput v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mObjType:I

    .line 9
    .line 10
    const-string v0, "attachObject"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    const-string v1, "launchMode"

    .line 17
    const/4 v2, 0x0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 21
    move-result p1

    .line 22
    .line 23
    iput p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mode:I

    .line 24
    .line 25
    iget p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mObjType:I

    .line 26
    .line 27
    if-eqz p1, :cond_6

    .line 28
    const/4 v1, 0x1

    .line 29
    .line 30
    if-eq p1, v1, :cond_5

    .line 31
    const/4 v1, 0x2

    .line 32
    .line 33
    if-eq p1, v1, :cond_4

    .line 34
    const/4 v1, 0x3

    .line 35
    .line 36
    if-eq p1, v1, :cond_3

    .line 37
    const/4 v1, 0x7

    .line 38
    .line 39
    if-eq p1, v1, :cond_2

    .line 40
    .line 41
    const/16 v1, 0xc

    .line 42
    .line 43
    if-eq p1, v1, :cond_1

    .line 44
    .line 45
    const/16 v1, 0x6d

    .line 46
    .line 47
    if-eq p1, v1, :cond_0

    .line 48
    .line 49
    goto/16 :goto_1

    .line 50
    .line 51
    :cond_0
    const-class p1, Lcom/narvii/model/SharedFile;

    .line 52
    .line 53
    .line 54
    invoke-static {v0, p1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    check-cast p1, Lcom/narvii/model/NVObject;

    .line 58
    .line 59
    iput-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mObject:Lcom/narvii/model/NVObject;

    .line 60
    .line 61
    if-eqz p1, :cond_8

    .line 62
    .line 63
    check-cast p1, Lcom/narvii/model/SharedFile;

    .line 64
    .line 65
    iget-object p1, p1, Lcom/narvii/model/SharedFile;->author:Lcom/narvii/model/User;

    .line 66
    .line 67
    iput-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mUser:Lcom/narvii/model/User;

    .line 68
    .line 69
    goto/16 :goto_1

    .line 70
    .line 71
    :cond_1
    const-class p1, Lcom/narvii/model/ChatThread;

    .line 72
    .line 73
    .line 74
    invoke-static {v0, p1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 75
    move-result-object p1

    .line 76
    .line 77
    check-cast p1, Lcom/narvii/model/NVObject;

    .line 78
    .line 79
    iput-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mObject:Lcom/narvii/model/NVObject;

    .line 80
    .line 81
    if-eqz p1, :cond_8

    .line 82
    .line 83
    check-cast p1, Lcom/narvii/model/ChatThread;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->owner()Lcom/narvii/model/User;

    .line 87
    move-result-object p1

    .line 88
    .line 89
    iput-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mUser:Lcom/narvii/model/User;

    .line 90
    goto :goto_1

    .line 91
    .line 92
    :cond_2
    const-class p1, Lcom/narvii/model/ChatMessage;

    .line 93
    .line 94
    .line 95
    invoke-static {v0, p1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 96
    move-result-object p1

    .line 97
    .line 98
    check-cast p1, Lcom/narvii/model/NVObject;

    .line 99
    .line 100
    iput-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mObject:Lcom/narvii/model/NVObject;

    .line 101
    .line 102
    if-eqz p1, :cond_8

    .line 103
    .line 104
    check-cast p1, Lcom/narvii/model/ChatMessage;

    .line 105
    .line 106
    iget-object p1, p1, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    .line 107
    .line 108
    iput-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mUser:Lcom/narvii/model/User;

    .line 109
    goto :goto_1

    .line 110
    .line 111
    :cond_3
    const-class p1, Lcom/narvii/model/Comment;

    .line 112
    .line 113
    .line 114
    invoke-static {v0, p1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 115
    move-result-object p1

    .line 116
    .line 117
    check-cast p1, Lcom/narvii/model/NVObject;

    .line 118
    .line 119
    iput-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mObject:Lcom/narvii/model/NVObject;

    .line 120
    .line 121
    if-eqz p1, :cond_8

    .line 122
    .line 123
    check-cast p1, Lcom/narvii/model/Comment;

    .line 124
    .line 125
    iget-object p1, p1, Lcom/narvii/model/Comment;->author:Lcom/narvii/model/User;

    .line 126
    .line 127
    iput-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mUser:Lcom/narvii/model/User;

    .line 128
    goto :goto_1

    .line 129
    .line 130
    :cond_4
    const-class p1, Lcom/narvii/model/Item;

    .line 131
    .line 132
    .line 133
    invoke-static {v0, p1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 134
    move-result-object p1

    .line 135
    .line 136
    check-cast p1, Lcom/narvii/model/NVObject;

    .line 137
    .line 138
    iput-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mObject:Lcom/narvii/model/NVObject;

    .line 139
    .line 140
    if-eqz p1, :cond_8

    .line 141
    .line 142
    check-cast p1, Lcom/narvii/model/Item;

    .line 143
    .line 144
    iget-object p1, p1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    .line 145
    .line 146
    iput-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mUser:Lcom/narvii/model/User;

    .line 147
    goto :goto_1

    .line 148
    .line 149
    :cond_5
    const-class p1, Lcom/narvii/model/Blog;

    .line 150
    .line 151
    .line 152
    invoke-static {v0, p1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 153
    move-result-object p1

    .line 154
    .line 155
    check-cast p1, Lcom/narvii/model/NVObject;

    .line 156
    .line 157
    iput-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mObject:Lcom/narvii/model/NVObject;

    .line 158
    .line 159
    if-eqz p1, :cond_8

    .line 160
    .line 161
    check-cast p1, Lcom/narvii/model/Blog;

    .line 162
    .line 163
    iget-object p1, p1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    .line 164
    .line 165
    iput-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mUser:Lcom/narvii/model/User;

    .line 166
    goto :goto_1

    .line 167
    .line 168
    :cond_6
    const-class p1, Lcom/narvii/model/User;

    .line 169
    .line 170
    .line 171
    invoke-static {v0, p1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 172
    move-result-object p1

    .line 173
    .line 174
    check-cast p1, Lcom/narvii/model/NVObject;

    .line 175
    .line 176
    iput-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mObject:Lcom/narvii/model/NVObject;

    .line 177
    .line 178
    if-eqz p1, :cond_7

    .line 179
    .line 180
    check-cast p1, Lcom/narvii/model/User;

    .line 181
    goto :goto_0

    .line 182
    :cond_7
    const/4 p1, 0x0

    .line 183
    .line 184
    :goto_0
    iput-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mUser:Lcom/narvii/model/User;

    .line 185
    :cond_8
    :goto_1
    return-void
.end method

.method private messageChanged()Z
    .locals 5

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->isStrikeMode:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->strikeTemplateList:Ljava/util/List;

    .line 7
    goto :goto_0

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->warningTemplateList:Ljava/util/List;

    .line 10
    .line 11
    :goto_0
    iget-object v1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->curTemplateTitle:Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    .line 18
    if-nez v1, :cond_4

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    goto :goto_1

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result v1

    .line 30
    .line 31
    if-eqz v1, :cond_4

    .line 32
    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    check-cast v1, Lcom/narvii/chat/template/MessageTemplate;

    .line 38
    .line 39
    iget-object v3, v1, Lcom/narvii/chat/template/MessageTemplate;->title:Ljava/lang/String;

    .line 40
    .line 41
    iget-object v4, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->curTemplateTitle:Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    move-result v3

    .line 46
    .line 47
    if-eqz v3, :cond_2

    .line 48
    .line 49
    iget-object v0, v1, Lcom/narvii/chat/template/MessageTemplate;->content:Ljava/lang/String;

    .line 50
    .line 51
    iget-object v3, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->edtStrikeMessage:Landroid/widget/EditText;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 55
    move-result-object v3

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 59
    move-result-object v3

    .line 60
    .line 61
    .line 62
    invoke-static {v0, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    move-result v0

    .line 64
    .line 65
    if-nez v0, :cond_4

    .line 66
    .line 67
    iget-object v0, v1, Lcom/narvii/chat/template/MessageTemplate;->content:Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 71
    move-result v0

    .line 72
    .line 73
    if-eqz v0, :cond_3

    .line 74
    .line 75
    iget-object v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->edtStrikeMessage:Landroid/widget/EditText;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 79
    move-result-object v0

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 83
    move-result-object v0

    .line 84
    .line 85
    .line 86
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 87
    move-result v0

    .line 88
    .line 89
    if-nez v0, :cond_4

    .line 90
    :cond_3
    const/4 v2, 0x1

    .line 91
    :cond_4
    :goto_1
    return v2
.end method

.method static bridge synthetic n(Lcom/narvii/poweruser/strike/StrikeWarningFragment;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->entryContainer:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic o(Lcom/narvii/poweruser/strike/StrikeWarningFragment;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->operationContainer:Landroid/view/View;

    return-object p0
.end method

.method private onTemplateSelected(Lcom/narvii/chat/template/MessageTemplate;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    move-object v1, v0

    .line 5
    goto :goto_0

    .line 6
    .line 7
    :cond_0
    iget-object v1, p1, Lcom/narvii/chat/template/MessageTemplate;->title:Ljava/lang/String;

    .line 8
    .line 9
    :goto_0
    iput-object v1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->curTemplateTitle:Ljava/lang/String;

    .line 10
    .line 11
    if-nez p1, :cond_1

    .line 12
    move-object v1, v0

    .line 13
    goto :goto_1

    .line 14
    .line 15
    :cond_1
    iget-object v1, p1, Lcom/narvii/chat/template/MessageTemplate;->content:Ljava/lang/String;

    .line 16
    .line 17
    :goto_1
    iput-object v1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->curTemplateContent:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->edtStrikeMessage:Landroid/widget/EditText;

    .line 20
    .line 21
    if-nez p1, :cond_2

    .line 22
    goto :goto_2

    .line 23
    .line 24
    :cond_2
    iget-object v0, p1, Lcom/narvii/chat/template/MessageTemplate;->content:Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->updateTagViews()V

    .line 31
    return-void
.end method

.method static bridge synthetic p(Lcom/narvii/poweruser/strike/StrikeWarningFragment;)Landroid/util/SparseArray;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->sectionStonesHours:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic q(Lcom/narvii/poweruser/strike/StrikeWarningFragment;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->messageChanged()Z

    move-result p0

    return p0
.end method

.method private queryUserInfo()V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    const-string v2, "/user-profile/"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mUser:Lcom/narvii/model/User;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    iget-object v1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->apiService:Lcom/narvii/util/http/ApiService;

    .line 39
    .line 40
    new-instance v2, Lcom/narvii/poweruser/strike/StrikeWarningFragment$3;

    .line 41
    .line 42
    const-class v3, Lcom/narvii/model/api/UserResponse;

    .line 43
    .line 44
    .line 45
    invoke-direct {v2, p0, v3}, Lcom/narvii/poweruser/strike/StrikeWarningFragment$3;-><init>(Lcom/narvii/poweruser/strike/StrikeWarningFragment;Ljava/lang/Class;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 49
    return-void
.end method

.method static bridge synthetic r(Lcom/narvii/poweruser/strike/StrikeWarningFragment;Lcom/narvii/chat/template/MessageTemplate;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->onTemplateSelected(Lcom/narvii/chat/template/MessageTemplate;)V

    return-void
.end method

.method static bridge synthetic s(Lcom/narvii/poweruser/strike/StrikeWarningFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->updateStrikeTemplateViews()V

    return-void
.end method

.method private sendNoticeTemplateRequest(Ljava/lang/String;)V
    .locals 6

    .line 1
    .line 2
    const-string v0, "warning"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    const-string v1, "strike"

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    move-result v1

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->warningTemplateList:Ljava/util/List;

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 22
    move-result v2

    .line 23
    .line 24
    if-lez v2, :cond_0

    .line 25
    .line 26
    iget-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->warningTemplateList:Ljava/util/List;

    .line 27
    .line 28
    .line 29
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 30
    move-result v0

    .line 31
    .line 32
    add-int/lit8 v0, v0, -0x1

    .line 33
    .line 34
    .line 35
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    check-cast p1, Lcom/narvii/chat/template/MessageTemplate;

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, p1}, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->onTemplateSelected(Lcom/narvii/chat/template/MessageTemplate;)V

    .line 42
    return-void

    .line 43
    .line 44
    :cond_0
    if-eqz v1, :cond_1

    .line 45
    .line 46
    iget-object v2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->strikeTemplateList:Ljava/util/List;

    .line 47
    .line 48
    if-eqz v2, :cond_1

    .line 49
    .line 50
    .line 51
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 52
    move-result v2

    .line 53
    .line 54
    if-lez v2, :cond_1

    .line 55
    .line 56
    iget-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->strikeTemplateList:Ljava/util/List;

    .line 57
    .line 58
    .line 59
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 60
    move-result v0

    .line 61
    .line 62
    add-int/lit8 v0, v0, -0x1

    .line 63
    .line 64
    .line 65
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 66
    move-result-object p1

    .line 67
    .line 68
    check-cast p1, Lcom/narvii/chat/template/MessageTemplate;

    .line 69
    .line 70
    .line 71
    invoke-direct {p0, p1}, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->onTemplateSelected(Lcom/narvii/chat/template/MessageTemplate;)V

    .line 72
    return-void

    .line 73
    .line 74
    .line 75
    :cond_1
    invoke-direct {p0}, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->updateStrikeTemplateViews()V

    .line 76
    .line 77
    const-string v2, "config"

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    move-result-object v2

    .line 82
    .line 83
    check-cast v2, Lcom/narvii/config/ConfigService;

    .line 84
    .line 85
    const-string v3, "community"

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 89
    move-result-object v3

    .line 90
    .line 91
    check-cast v3, Lcom/narvii/community/CommunityService;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 95
    move-result v2

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3, v2}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    .line 99
    move-result-object v2

    .line 100
    .line 101
    if-nez v2, :cond_2

    .line 102
    const/4 v2, 0x0

    .line 103
    goto :goto_0

    .line 104
    .line 105
    :cond_2
    iget-object v2, v2, Lcom/narvii/model/Community;->primaryLanguage:Ljava/lang/String;

    .line 106
    .line 107
    :goto_0
    new-instance v3, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 108
    .line 109
    .line 110
    invoke-direct {v3}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 111
    .line 112
    new-instance v4, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .line 117
    const-string v5, "/notice/message-template/"

    .line 118
    .line 119
    .line 120
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    move-result-object p1

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 131
    move-result-object p1

    .line 132
    .line 133
    .line 134
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 135
    move-result v3

    .line 136
    .line 137
    if-nez v3, :cond_3

    .line 138
    .line 139
    const-string v3, "Accept-Language"

    .line 140
    .line 141
    .line 142
    filled-new-array {v3, v2}, [Ljava/lang/String;

    .line 143
    move-result-object v2

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->headers([Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 147
    .line 148
    .line 149
    :cond_3
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 150
    move-result-object p1

    .line 151
    .line 152
    const-string v2, "api"

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 156
    move-result-object v2

    .line 157
    .line 158
    check-cast v2, Lcom/narvii/util/http/ApiService;

    .line 159
    .line 160
    new-instance v3, Lcom/narvii/poweruser/strike/StrikeWarningFragment$9;

    .line 161
    .line 162
    const-class v4, Lcom/narvii/chat/template/MessageTemplateListResponse;

    .line 163
    .line 164
    .line 165
    invoke-direct {v3, p0, v4, v1, v0}, Lcom/narvii/poweruser/strike/StrikeWarningFragment$9;-><init>(Lcom/narvii/poweruser/strike/StrikeWarningFragment;Ljava/lang/Class;ZZ)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v2, p1, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 169
    return-void
.end method

.method private sendStrike()V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->edtStrikeMessage:Landroid/widget/EditText;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-nez v1, :cond_5

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    move-result v1

    .line 25
    .line 26
    if-nez v1, :cond_5

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 30
    move-result v1

    .line 31
    const/4 v2, 0x3

    .line 32
    .line 33
    if-ge v1, v2, :cond_0

    .line 34
    .line 35
    goto/16 :goto_2

    .line 36
    .line 37
    :cond_0
    new-instance v1, Lcom/narvii/util/dialog/ProgressDialog;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 41
    move-result-object v2

    .line 42
    .line 43
    .line 44
    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 48
    .line 49
    new-instance v2, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 50
    .line 51
    .line 52
    invoke-direct {v2}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 56
    move-result-object v2

    .line 57
    .line 58
    const-string v3, "/notice"

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 62
    move-result-object v2

    .line 63
    .line 64
    .line 65
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 66
    move-result-object v3

    .line 67
    .line 68
    iget-object v4, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mObject:Lcom/narvii/model/NVObject;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4}, Lcom/narvii/model/NVObject;->uid()Ljava/lang/String;

    .line 72
    move-result-object v4

    .line 73
    .line 74
    const-string v5, "targetUid"

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3, v5, v4}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 78
    .line 79
    const-string v4, "title"

    .line 80
    .line 81
    iget-object v5, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->curTemplateTitle:Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3, v4, v5}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 85
    .line 86
    const-string v4, "content"

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3, v4, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 90
    .line 91
    const-string v4, "attachedObject"

    .line 92
    .line 93
    .line 94
    invoke-direct {p0}, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->getAttachObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 95
    move-result-object v5

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3, v4, v5}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 99
    .line 100
    iget-boolean v4, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->isStrikeMode:Z

    .line 101
    .line 102
    const-string v5, "penaltyType"

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3, v5, v4}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 106
    .line 107
    iget-boolean v4, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->isStrikeMode:Z

    .line 108
    .line 109
    if-eqz v4, :cond_2

    .line 110
    .line 111
    iget-object v4, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->sectionStonesHours:Landroid/util/SparseArray;

    .line 112
    .line 113
    iget-object v5, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->seekBar:Lcom/narvii/poweruser/SectionSeekBar;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v5}, Lcom/narvii/poweruser/SectionSeekBar;->getProgress()I

    .line 117
    move-result v5

    .line 118
    .line 119
    .line 120
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 121
    move-result-object v4

    .line 122
    .line 123
    check-cast v4, Ljava/lang/Integer;

    .line 124
    .line 125
    const/16 v5, 0xe10

    .line 126
    .line 127
    if-nez v4, :cond_1

    .line 128
    goto :goto_0

    .line 129
    .line 130
    .line 131
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 132
    move-result v4

    .line 133
    mul-int/2addr v5, v4

    .line 134
    .line 135
    :goto_0
    const-string v4, "penaltyValue"

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3, v4, v5}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 139
    .line 140
    .line 141
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 142
    move-result v0

    .line 143
    .line 144
    if-nez v0, :cond_3

    .line 145
    .line 146
    .line 147
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 148
    move-result-object v0

    .line 149
    .line 150
    const-string v4, "adminOpNote"

    .line 151
    .line 152
    .line 153
    invoke-virtual {v3, v4, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 154
    .line 155
    :cond_3
    iget-boolean v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->isStrikeMode:Z

    .line 156
    .line 157
    if-eqz v0, :cond_4

    .line 158
    const/4 v0, 0x4

    .line 159
    goto :goto_1

    .line 160
    :cond_4
    const/4 v0, 0x7

    .line 161
    .line 162
    :goto_1
    const-string v4, "noticeType"

    .line 163
    .line 164
    .line 165
    invoke-virtual {v3, v4, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->body(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 169
    .line 170
    const/16 v0, 0x7d0

    .line 171
    .line 172
    .line 173
    invoke-virtual {v2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->timeout(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 174
    .line 175
    const-string v0, "api"

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 179
    move-result-object v0

    .line 180
    .line 181
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 185
    move-result-object v2

    .line 186
    .line 187
    new-instance v3, Lcom/narvii/poweruser/strike/StrikeWarningFragment$10;

    .line 188
    .line 189
    const-class v4, Lcom/narvii/model/api/ApiResponse;

    .line 190
    .line 191
    .line 192
    invoke-direct {v3, p0, v4, v1}, Lcom/narvii/poweruser/strike/StrikeWarningFragment$10;-><init>(Lcom/narvii/poweruser/strike/StrikeWarningFragment;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0, v2, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 196
    return-void

    .line 197
    .line 198
    :cond_5
    :goto_2
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 202
    move-result-object v1

    .line 203
    .line 204
    .line 205
    invoke-direct {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 206
    .line 207
    .line 208
    const v1, 0x7f120fb9

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 212
    .line 213
    .line 214
    const v1, 0x104000a

    .line 215
    const/4 v2, 0x0

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0, v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 222
    return-void
.end method

.method static bridge synthetic t(Lcom/narvii/poweruser/strike/StrikeWarningFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->updateStrikeWarningHistoryView()V

    return-void
.end method

.method private updateOperationView()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->tvOperationTag:Landroid/widget/TextView;

    .line 3
    const/4 v1, -0x1

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->tvOperationTag:Landroid/widget/TextView;

    .line 9
    .line 10
    iget-boolean v1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->isStrikeMode:Z

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    .line 15
    const v1, 0x7f121160

    .line 16
    goto :goto_0

    .line 17
    .line 18
    .line 19
    :cond_0
    const v1, 0x7f12128f

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->tvOperationTag:Landroid/widget/TextView;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    iget-boolean v2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->isStrikeMode:Z

    .line 31
    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    .line 35
    const v2, 0x7f0809d6

    .line 36
    goto :goto_1

    .line 37
    .line 38
    .line 39
    :cond_1
    const v2, 0x7f0809d7

    .line 40
    .line 41
    .line 42
    :goto_1
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 47
    .line 48
    iget-object v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->muteUserContainer:Landroid/view/View;

    .line 49
    .line 50
    iget-boolean v1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->isStrikeMode:Z

    .line 51
    .line 52
    if-eqz v1, :cond_2

    .line 53
    const/4 v1, 0x0

    .line 54
    goto :goto_2

    .line 55
    :cond_2
    const/4 v1, 0x4

    .line 56
    .line 57
    .line 58
    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 59
    return-void
.end method

.method private updateStrikeTemplateViews()V
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->isStrikeMode:Z

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->strikeTemplateError:Ljava/lang/String;

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_1
    iget-object v1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->warningTemplateError:Ljava/lang/String;

    .line 17
    .line 18
    :goto_0
    if-eqz v0, :cond_2

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->strikeTemplateList:Ljava/util/List;

    .line 21
    goto :goto_1

    .line 22
    .line 23
    :cond_2
    iget-object v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->warningTemplateList:Ljava/util/List;

    .line 24
    .line 25
    :goto_1
    iget-object v2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->templateLoading:Landroid/view/View;

    .line 26
    .line 27
    const/16 v3, 0x8

    .line 28
    const/4 v4, 0x0

    .line 29
    .line 30
    if-nez v0, :cond_3

    .line 31
    .line 32
    .line 33
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    move-result v5

    .line 35
    .line 36
    if-eqz v5, :cond_3

    .line 37
    move v5, v4

    .line 38
    goto :goto_2

    .line 39
    :cond_3
    move v5, v3

    .line 40
    .line 41
    .line 42
    :goto_2
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 43
    .line 44
    iget-object v2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->templateErrorContainer:Landroid/view/View;

    .line 45
    .line 46
    .line 47
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 48
    move-result v5

    .line 49
    .line 50
    if-nez v5, :cond_4

    .line 51
    move v5, v4

    .line 52
    goto :goto_3

    .line 53
    :cond_4
    move v5, v3

    .line 54
    .line 55
    .line 56
    :goto_3
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 57
    .line 58
    iget-object v2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->tvTemplateError:Landroid/widget/TextView;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    iget-object v2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->strikeTypeContainer:Lcom/narvii/util/layouts/NVFlowLayout;

    .line 64
    .line 65
    if-eqz v0, :cond_5

    .line 66
    .line 67
    .line 68
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 69
    move-result v1

    .line 70
    .line 71
    if-eqz v1, :cond_5

    .line 72
    move v3, v4

    .line 73
    .line 74
    .line 75
    :cond_5
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 76
    .line 77
    if-eqz v0, :cond_9

    .line 78
    .line 79
    iget-object v1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->strikeTypeContainer:Lcom/narvii/util/layouts/NVFlowLayout;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 83
    .line 84
    .line 85
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 86
    move-result-object v1

    .line 87
    .line 88
    .line 89
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    move-result v2

    .line 91
    .line 92
    if-eqz v2, :cond_8

    .line 93
    .line 94
    .line 95
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    move-result-object v2

    .line 97
    .line 98
    check-cast v2, Lcom/narvii/chat/template/MessageTemplate;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 102
    move-result-object v3

    .line 103
    .line 104
    .line 105
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 106
    move-result-object v3

    .line 107
    .line 108
    .line 109
    const v5, 0x7f0d0482

    .line 110
    .line 111
    iget-object v6, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->strikeTypeContainer:Lcom/narvii/util/layouts/NVFlowLayout;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3, v5, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 115
    move-result-object v3

    .line 116
    .line 117
    iget-object v5, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->curTemplateTitle:Ljava/lang/String;

    .line 118
    .line 119
    iget-object v6, v2, Lcom/narvii/chat/template/MessageTemplate;->title:Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    invoke-static {v5, v6}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 123
    move-result v5

    .line 124
    .line 125
    .line 126
    const v6, 0x7f0a039d

    .line 127
    .line 128
    .line 129
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 130
    move-result-object v6

    .line 131
    .line 132
    check-cast v6, Landroid/widget/TextView;

    .line 133
    .line 134
    iget-object v7, v2, Lcom/narvii/chat/template/MessageTemplate;->title:Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    .line 139
    if-eqz v5, :cond_6

    .line 140
    const/4 v7, -0x1

    .line 141
    goto :goto_5

    .line 142
    .line 143
    .line 144
    :cond_6
    const v7, -0x8e8c87

    .line 145
    .line 146
    .line 147
    :goto_5
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 151
    move-result-object v7

    .line 152
    .line 153
    if-eqz v5, :cond_7

    .line 154
    .line 155
    .line 156
    const v5, 0x7f0809d9

    .line 157
    goto :goto_6

    .line 158
    .line 159
    .line 160
    :cond_7
    const v5, 0x7f0809d8

    .line 161
    .line 162
    .line 163
    :goto_6
    invoke-static {v7, v5}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 164
    move-result-object v5

    .line 165
    .line 166
    .line 167
    invoke-virtual {v6, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 168
    .line 169
    new-instance v5, Lcom/narvii/poweruser/strike/StrikeWarningFragment$8;

    .line 170
    .line 171
    .line 172
    invoke-direct {v5, p0, v2}, Lcom/narvii/poweruser/strike/StrikeWarningFragment$8;-><init>(Lcom/narvii/poweruser/strike/StrikeWarningFragment;Lcom/narvii/chat/template/MessageTemplate;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    .line 177
    .line 178
    const v5, 0x7f0a0ddf

    .line 179
    .line 180
    iget-object v2, v2, Lcom/narvii/chat/template/MessageTemplate;->title:Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v3, v5, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 184
    .line 185
    iget-object v2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->strikeTypeContainer:Lcom/narvii/util/layouts/NVFlowLayout;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 189
    goto :goto_4

    .line 190
    .line 191
    .line 192
    :cond_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 193
    move-result v1

    .line 194
    .line 195
    add-int/lit8 v1, v1, -0x1

    .line 196
    .line 197
    .line 198
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 199
    move-result-object v0

    .line 200
    .line 201
    check-cast v0, Lcom/narvii/chat/template/MessageTemplate;

    .line 202
    .line 203
    .line 204
    invoke-direct {p0, v0}, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->onTemplateSelected(Lcom/narvii/chat/template/MessageTemplate;)V

    .line 205
    :cond_9
    return-void
.end method

.method private updateStrikeWarningHistoryView()V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mUser:Lcom/narvii/model/User;

    .line 3
    .line 4
    const/16 v1, 0x8

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->tvStrikeCount:Landroid/widget/TextView;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->tvWarningCount:Landroid/widget/TextView;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->tvRecentTime:Landroid/widget/TextView;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    return-void

    .line 23
    .line 24
    :cond_0
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    .line 25
    .line 26
    .line 27
    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 28
    .line 29
    iget-object v2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mUser:Lcom/narvii/model/User;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/narvii/model/User;->getStrikeCount()I

    .line 33
    move-result v2

    .line 34
    .line 35
    .line 36
    const v3, 0x7f120d33

    .line 37
    const/4 v4, 0x0

    .line 38
    const/4 v5, 0x1

    .line 39
    .line 40
    if-ge v2, v5, :cond_1

    .line 41
    .line 42
    new-array v6, v5, [Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 46
    move-result-object v2

    .line 47
    .line 48
    aput-object v2, v6, v4

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v3, v6}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    move-result-object v2

    .line 53
    .line 54
    .line 55
    const v3, -0xff3183

    .line 56
    goto :goto_0

    .line 57
    .line 58
    :cond_1
    if-ne v2, v5, :cond_2

    .line 59
    .line 60
    .line 61
    const v2, 0x7f120e01

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 65
    move-result-object v2

    .line 66
    .line 67
    .line 68
    const v3, -0xa59dd

    .line 69
    goto :goto_0

    .line 70
    .line 71
    :cond_2
    new-array v6, v5, [Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 75
    move-result-object v2

    .line 76
    .line 77
    aput-object v2, v6, v4

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, v3, v6}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 81
    move-result-object v2

    .line 82
    .line 83
    .line 84
    const v3, -0x2ffde5

    .line 85
    .line 86
    .line 87
    :goto_0
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 91
    move-result-object v3

    .line 92
    .line 93
    const/high16 v6, 0x40800000    # 4.0f

    .line 94
    .line 95
    .line 96
    invoke-static {v3, v6}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 97
    move-result v3

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 101
    .line 102
    iget-object v3, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->tvStrikeCount:Landroid/widget/TextView;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    .line 107
    iget-object v2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->tvStrikeCount:Landroid/widget/TextView;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 111
    .line 112
    iget-object v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->tvStrikeCount:Landroid/widget/TextView;

    .line 113
    .line 114
    iget-object v2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mUser:Lcom/narvii/model/User;

    .line 115
    .line 116
    iget-object v2, v2, Lcom/narvii/model/User;->adminInfo:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 117
    .line 118
    if-nez v2, :cond_3

    .line 119
    const/4 v2, 0x4

    .line 120
    goto :goto_1

    .line 121
    :cond_3
    move v2, v4

    .line 122
    .line 123
    .line 124
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 125
    .line 126
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    .line 127
    .line 128
    .line 129
    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 130
    .line 131
    .line 132
    const v2, -0x8800

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 139
    move-result-object v2

    .line 140
    .line 141
    .line 142
    invoke-static {v2, v6}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 143
    move-result v2

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 147
    .line 148
    iget-object v2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mUser:Lcom/narvii/model/User;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v2}, Lcom/narvii/model/User;->getWarningCount()I

    .line 152
    move-result v2

    .line 153
    .line 154
    if-ne v2, v5, :cond_4

    .line 155
    .line 156
    .line 157
    const v3, 0x7f120e06

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 161
    move-result-object v3

    .line 162
    goto :goto_2

    .line 163
    .line 164
    :cond_4
    new-array v3, v5, [Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 168
    move-result-object v5

    .line 169
    .line 170
    aput-object v5, v3, v4

    .line 171
    .line 172
    .line 173
    const v5, 0x7f120d38

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0, v5, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 177
    move-result-object v3

    .line 178
    .line 179
    :goto_2
    iget-object v5, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->tvWarningCount:Landroid/widget/TextView;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    .line 184
    iget-object v3, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->tvWarningCount:Landroid/widget/TextView;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 188
    .line 189
    iget-object v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->tvWarningCount:Landroid/widget/TextView;

    .line 190
    .line 191
    if-nez v2, :cond_5

    .line 192
    move v2, v1

    .line 193
    goto :goto_3

    .line 194
    :cond_5
    move v2, v4

    .line 195
    .line 196
    .line 197
    :goto_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 198
    .line 199
    iget-object v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mUser:Lcom/narvii/model/User;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0}, Lcom/narvii/model/User;->getLastWarningOrStrikeTime()Ljava/util/Date;

    .line 203
    move-result-object v0

    .line 204
    .line 205
    iget-object v2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->tvRecentTime:Landroid/widget/TextView;

    .line 206
    .line 207
    if-nez v0, :cond_6

    .line 208
    const/4 v3, 0x0

    .line 209
    goto :goto_4

    .line 210
    .line 211
    .line 212
    :cond_6
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 213
    move-result-object v3

    .line 214
    .line 215
    .line 216
    invoke-static {v3}, Lcom/narvii/util/DateTimeFormatter;->getInstance(Landroid/content/Context;)Lcom/narvii/util/DateTimeFormatter;

    .line 217
    move-result-object v3

    .line 218
    .line 219
    .line 220
    invoke-virtual {v3, v0}, Lcom/narvii/util/DateTimeFormatter;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 221
    move-result-object v3

    .line 222
    .line 223
    .line 224
    :goto_4
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    .line 226
    iget-object v2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->tvRecentTime:Landroid/widget/TextView;

    .line 227
    .line 228
    if-nez v0, :cond_7

    .line 229
    goto :goto_5

    .line 230
    :cond_7
    move v1, v4

    .line 231
    .line 232
    .line 233
    :goto_5
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 234
    return-void
.end method

.method private updateTagViews()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->strikeTypeContainer:Lcom/narvii/util/layouts/NVFlowLayout;

    .line 3
    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    goto :goto_3

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    .line 14
    :goto_0
    iget-object v1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->strikeTypeContainer:Lcom/narvii/util/layouts/NVFlowLayout;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 18
    move-result v1

    .line 19
    .line 20
    if-ge v0, v1, :cond_3

    .line 21
    .line 22
    iget-object v1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->strikeTypeContainer:Lcom/narvii/util/layouts/NVFlowLayout;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    const v2, 0x7f0a0ddf

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    iget-object v3, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->curTemplateTitle:Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    invoke-static {v3, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    move-result v2

    .line 40
    .line 41
    .line 42
    const v3, 0x7f0a039d

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    check-cast v1, Landroid/widget/TextView;

    .line 49
    .line 50
    if-eqz v2, :cond_1

    .line 51
    const/4 v3, -0x1

    .line 52
    goto :goto_1

    .line 53
    .line 54
    .line 55
    :cond_1
    const v3, -0x8e8c87

    .line 56
    .line 57
    .line 58
    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 62
    move-result-object v3

    .line 63
    .line 64
    if-eqz v2, :cond_2

    .line 65
    .line 66
    .line 67
    const v2, 0x7f0809d9

    .line 68
    goto :goto_2

    .line 69
    .line 70
    .line 71
    :cond_2
    const v2, 0x7f0809d8

    .line 72
    .line 73
    .line 74
    :goto_2
    invoke-static {v3, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 75
    move-result-object v2

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 79
    .line 80
    add-int/lit8 v0, v0, 0x1

    .line 81
    goto :goto_0

    .line 82
    :cond_3
    :goto_3
    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->step:I

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    .line 6
    if-ne v0, v2, :cond_0

    .line 7
    .line 8
    iput v1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->step:I

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->cancelNoticeTemplateRequest()V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->enterOperationSelectPage()V

    .line 15
    return v2

    .line 16
    :cond_0
    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    sparse-switch p1, :sswitch_data_0

    .line 8
    goto :goto_1

    .line 9
    :sswitch_0
    const/4 p1, 0x0

    .line 10
    .line 11
    iput-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->warningTemplateError:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->strikeTemplateError:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->warningTemplateList:Ljava/util/List;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->strikeTemplateList:Ljava/util/List;

    .line 18
    .line 19
    iget-boolean p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->isStrikeMode:Z

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    const-string p1, "strike"

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_0
    const-string p1, "warning"

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-direct {p0, p1}, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->sendNoticeTemplateRequest(Ljava/lang/String;)V

    .line 30
    goto :goto_1

    .line 31
    .line 32
    .line 33
    :sswitch_1
    invoke-direct {p0}, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->sendStrike()V

    .line 34
    goto :goto_1

    .line 35
    :sswitch_2
    const/4 p1, 0x0

    .line 36
    .line 37
    .line 38
    invoke-direct {p0, p1}, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->enterOperationEditPage(Z)V

    .line 39
    goto :goto_1

    .line 40
    :sswitch_3
    const/4 p1, 0x1

    .line 41
    .line 42
    .line 43
    invoke-direct {p0, p1}, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->enterOperationEditPage(Z)V

    .line 44
    goto :goto_1

    .line 45
    .line 46
    .line 47
    :sswitch_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    if-eqz p1, :cond_1

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 58
    goto :goto_1

    .line 59
    .line 60
    .line 61
    :sswitch_5
    invoke-direct {p0}, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->enterOperationSelectPage()V

    .line 62
    :cond_1
    :goto_1
    return-void

    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    :sswitch_data_0
    .sparse-switch
        0x7f0a0191 -> :sswitch_5
        0x7f0a02c1 -> :sswitch_4
        0x7f0a0a74 -> :sswitch_3
        0x7f0a0a75 -> :sswitch_2
        0x7f0a0df8 -> :sswitch_1
        0x7f0a0e43 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "api"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->apiService:Lcom/narvii/util/http/ApiService;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, v0}, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->handleBundle(Landroid/os/Bundle;)V

    .line 31
    .line 32
    :cond_0
    if-eqz p1, :cond_1

    .line 33
    .line 34
    const-string v0, "strikeList"

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    const-class v1, Lcom/narvii/chat/template/MessageTemplate;

    .line 41
    .line 42
    .line 43
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    iput-object v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->strikeTemplateList:Ljava/util/List;

    .line 47
    .line 48
    const-string v0, "warningList"

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    .line 55
    invoke-static {p1, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    iput-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->warningTemplateList:Ljava/util/List;

    .line 59
    .line 60
    .line 61
    :cond_1
    invoke-direct {p0}, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->configStones()V

    .line 62
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d0311

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->strikeTemplateList:Ljava/util/List;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    const-string v1, "strikeList"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->warningTemplateList:Ljava/util/List;

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    const-string v1, "warningList"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    move-result-object p2

    .line 8
    .line 9
    .line 10
    invoke-static {p2}, Lcom/narvii/util/AndroidBug5497Workaround;->assistActivity(Landroid/app/Activity;)V

    .line 11
    .line 12
    .line 13
    const p2, 0x7f0a02c1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    move-result-object p2

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    .line 22
    .line 23
    const p2, 0x7f0a0f36

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    move-result-object p2

    .line 28
    .line 29
    check-cast p2, Lcom/narvii/widget/UserAvatarLayout;

    .line 30
    .line 31
    iput-object p2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    .line 32
    .line 33
    iget-object v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mUser:Lcom/narvii/model/User;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, v0}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 37
    .line 38
    .line 39
    const p2, 0x7f0a09f9

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    move-result-object p2

    .line 44
    .line 45
    check-cast p2, Lcom/narvii/widget/NicknameView;

    .line 46
    .line 47
    iget-object v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mUser:Lcom/narvii/model/User;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2, v0}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 51
    .line 52
    .line 53
    const p2, 0x7f0a0dda

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 57
    move-result-object p2

    .line 58
    .line 59
    check-cast p2, Landroid/widget/TextView;

    .line 60
    .line 61
    iput-object p2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->tvStrikeCount:Landroid/widget/TextView;

    .line 62
    .line 63
    .line 64
    const p2, 0x7f0a101e

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 68
    move-result-object p2

    .line 69
    .line 70
    check-cast p2, Landroid/widget/TextView;

    .line 71
    .line 72
    iput-object p2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->tvWarningCount:Landroid/widget/TextView;

    .line 73
    .line 74
    .line 75
    const p2, 0x7f0a0bee

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 79
    move-result-object p2

    .line 80
    .line 81
    check-cast p2, Landroid/widget/TextView;

    .line 82
    .line 83
    iput-object p2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->tvRecentTime:Landroid/widget/TextView;

    .line 84
    .line 85
    .line 86
    invoke-direct {p0}, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->updateStrikeWarningHistoryView()V

    .line 87
    .line 88
    .line 89
    const p2, 0x7f0a04f9

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 93
    move-result-object p2

    .line 94
    .line 95
    iput-object p2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->entryContainer:Landroid/view/View;

    .line 96
    .line 97
    .line 98
    const v0, 0x7f0a0a75

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 102
    move-result-object p2

    .line 103
    .line 104
    iput-object p2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->btnOperaWarning:Landroid/view/View;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    .line 109
    iget-object p2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->entryContainer:Landroid/view/View;

    .line 110
    .line 111
    .line 112
    const v0, 0x7f0a0a74

    .line 113
    .line 114
    .line 115
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 116
    move-result-object p2

    .line 117
    .line 118
    iput-object p2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->btnOperaStrike:Landroid/view/View;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    .line 123
    .line 124
    const p2, 0x7f0a0a76

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 128
    move-result-object p2

    .line 129
    .line 130
    iput-object p2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->operationContainer:Landroid/view/View;

    .line 131
    .line 132
    .line 133
    const v0, 0x7f0a0a7a

    .line 134
    .line 135
    .line 136
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 137
    move-result-object p2

    .line 138
    .line 139
    check-cast p2, Landroid/widget/TextView;

    .line 140
    .line 141
    iput-object p2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->tvOperationTag:Landroid/widget/TextView;

    .line 142
    .line 143
    iget-object p2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->operationContainer:Landroid/view/View;

    .line 144
    .line 145
    .line 146
    const v0, 0x7f0a0de1

    .line 147
    .line 148
    .line 149
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 150
    move-result-object p2

    .line 151
    .line 152
    check-cast p2, Lcom/narvii/util/layouts/NVFlowLayout;

    .line 153
    .line 154
    iput-object p2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->strikeTypeContainer:Lcom/narvii/util/layouts/NVFlowLayout;

    .line 155
    .line 156
    iget-object p2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->operationContainer:Landroid/view/View;

    .line 157
    .line 158
    .line 159
    const v0, 0x7f0a0ddb

    .line 160
    .line 161
    .line 162
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 163
    move-result-object p2

    .line 164
    .line 165
    check-cast p2, Landroid/widget/EditText;

    .line 166
    .line 167
    iput-object p2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->edtStrikeMessage:Landroid/widget/EditText;

    .line 168
    .line 169
    new-instance v0, Lcom/narvii/poweruser/strike/StrikeWarningFragment$1;

    .line 170
    .line 171
    .line 172
    invoke-direct {v0, p0}, Lcom/narvii/poweruser/strike/StrikeWarningFragment$1;-><init>(Lcom/narvii/poweruser/strike/StrikeWarningFragment;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 176
    .line 177
    iget-object p2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->operationContainer:Landroid/view/View;

    .line 178
    .line 179
    .line 180
    const v0, 0x7f0a0cc1

    .line 181
    .line 182
    .line 183
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 184
    move-result-object p2

    .line 185
    .line 186
    check-cast p2, Lcom/narvii/poweruser/SectionSeekBar;

    .line 187
    .line 188
    iput-object p2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->seekBar:Lcom/narvii/poweruser/SectionSeekBar;

    .line 189
    .line 190
    new-instance v0, Lcom/narvii/poweruser/strike/StrikeWarningFragment$2;

    .line 191
    .line 192
    .line 193
    invoke-direct {v0, p0}, Lcom/narvii/poweruser/strike/StrikeWarningFragment$2;-><init>(Lcom/narvii/poweruser/strike/StrikeWarningFragment;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p2, v0}, Lcom/narvii/poweruser/SectionSeekBar;->setCustomSectionTextArray(Lcom/narvii/poweruser/SectionSeekBar$CustomSectionTextArray;)V

    .line 197
    .line 198
    iget-object p2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->operationContainer:Landroid/view/View;

    .line 199
    .line 200
    .line 201
    const v0, 0x7f0a0191

    .line 202
    .line 203
    .line 204
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 205
    move-result-object p2

    .line 206
    .line 207
    iput-object p2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->btnBack:Landroid/view/View;

    .line 208
    .line 209
    .line 210
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    .line 212
    iget-object p2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->operationContainer:Landroid/view/View;

    .line 213
    .line 214
    .line 215
    const v0, 0x7f0a0df8

    .line 216
    .line 217
    .line 218
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 219
    move-result-object p2

    .line 220
    .line 221
    iput-object p2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->btnSubmit:Landroid/view/View;

    .line 222
    .line 223
    .line 224
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    .line 226
    .line 227
    const p2, 0x7f0a09cb

    .line 228
    .line 229
    .line 230
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 231
    move-result-object p2

    .line 232
    .line 233
    iput-object p2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->muteUserContainer:Landroid/view/View;

    .line 234
    .line 235
    .line 236
    const p2, 0x7f0a0e43

    .line 237
    .line 238
    .line 239
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 240
    move-result-object p2

    .line 241
    .line 242
    iput-object p2, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->templateErrorContainer:Landroid/view/View;

    .line 243
    .line 244
    .line 245
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    .line 247
    .line 248
    const p2, 0x7f0a0e44

    .line 249
    .line 250
    .line 251
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 252
    move-result-object v0

    .line 253
    .line 254
    iput-object v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->templateLoading:Landroid/view/View;

    .line 255
    .line 256
    .line 257
    const v0, 0x7f0a04fd

    .line 258
    .line 259
    .line 260
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 261
    move-result-object v0

    .line 262
    .line 263
    check-cast v0, Landroid/widget/TextView;

    .line 264
    .line 265
    iput-object v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->tvTemplateError:Landroid/widget/TextView;

    .line 266
    .line 267
    .line 268
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 269
    move-result-object p1

    .line 270
    .line 271
    iput-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->templateLoading:Landroid/view/View;

    .line 272
    .line 273
    iget-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->operationContainer:Landroid/view/View;

    .line 274
    const/4 p2, 0x4

    .line 275
    .line 276
    .line 277
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 278
    .line 279
    iget-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->entryContainer:Landroid/view/View;

    .line 280
    const/4 p2, 0x0

    .line 281
    .line 282
    .line 283
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 284
    .line 285
    iget-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->mUser:Lcom/narvii/model/User;

    .line 286
    .line 287
    if-eqz p1, :cond_0

    .line 288
    .line 289
    iget-object p1, p1, Lcom/narvii/model/User;->adminInfo:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 290
    .line 291
    if-nez p1, :cond_0

    .line 292
    .line 293
    .line 294
    invoke-direct {p0}, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->queryUserInfo()V

    .line 295
    :cond_0
    return-void
.end method
