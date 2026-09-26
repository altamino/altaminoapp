.class public final Lcom/narvii/chat/detail/ThreadAnnouncementFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/detail/ThreadAnnouncementFragment$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/chat/detail/ThreadAnnouncementFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final api$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final chatHelper$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private chatThread:Lcom/narvii/model/ChatThread;

.field private final clearListener$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final content$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final contentLayout$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final editableBottom$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final emptyLayout$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final progressDialog$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private request:Lcom/narvii/util/http/ApiRequest;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final switchView$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->Companion:Lcom/narvii/chat/detail/ThreadAnnouncementFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a04cb

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, v0}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->bind(I)Lw7/m;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->editableBottom$delegate:Lw7/m;

    .line 13
    .line 14
    .line 15
    const v0, 0x7f0a0e17

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v0}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->bind(I)Lw7/m;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    iput-object v0, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->switchView$delegate:Lw7/m;

    .line 22
    .line 23
    .line 24
    const v0, 0x7f0a039d

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, v0}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->bind(I)Lw7/m;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    iput-object v0, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->content$delegate:Lw7/m;

    .line 31
    .line 32
    .line 33
    const v0, 0x7f0a04e5

    .line 34
    .line 35
    .line 36
    invoke-direct {p0, v0}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->bind(I)Lw7/m;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    iput-object v0, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->emptyLayout$delegate:Lw7/m;

    .line 40
    .line 41
    .line 42
    const v0, 0x7f0a03a5

    .line 43
    .line 44
    .line 45
    invoke-direct {p0, v0}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->bind(I)Lw7/m;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    iput-object v0, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->contentLayout$delegate:Lw7/m;

    .line 49
    .line 50
    new-instance v0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment$clearListener$2;

    .line 51
    .line 52
    .line 53
    invoke-direct {v0, p0}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment$clearListener$2;-><init>(Lcom/narvii/chat/detail/ThreadAnnouncementFragment;)V

    .line 54
    .line 55
    .line 56
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    iput-object v0, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->clearListener$delegate:Lw7/m;

    .line 60
    .line 61
    new-instance v0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment$api$2;

    .line 62
    .line 63
    .line 64
    invoke-direct {v0, p0}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment$api$2;-><init>(Lcom/narvii/chat/detail/ThreadAnnouncementFragment;)V

    .line 65
    .line 66
    .line 67
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    iput-object v0, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->api$delegate:Lw7/m;

    .line 71
    .line 72
    new-instance v0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment$progressDialog$2;

    .line 73
    .line 74
    .line 75
    invoke-direct {v0, p0}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment$progressDialog$2;-><init>(Lcom/narvii/chat/detail/ThreadAnnouncementFragment;)V

    .line 76
    .line 77
    .line 78
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 79
    move-result-object v0

    .line 80
    .line 81
    iput-object v0, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->progressDialog$delegate:Lw7/m;

    .line 82
    .line 83
    new-instance v0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment$chatHelper$2;

    .line 84
    .line 85
    .line 86
    invoke-direct {v0, p0}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment$chatHelper$2;-><init>(Lcom/narvii/chat/detail/ThreadAnnouncementFragment;)V

    .line 87
    .line 88
    .line 89
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 90
    move-result-object v0

    .line 91
    .line 92
    iput-object v0, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->chatHelper$delegate:Lw7/m;

    .line 93
    return-void
.end method

.method public static final synthetic access$getChatThread$p(Lcom/narvii/chat/detail/ThreadAnnouncementFragment;)Lcom/narvii/model/ChatThread;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->chatThread:Lcom/narvii/model/ChatThread;

    .line 3
    return-object p0
.end method

.method private final bind(I)Lw7/m;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)",
            "Lw7/m<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lw7/q;->NONE:Lw7/q;

    .line 3
    .line 4
    new-instance v1, Lcom/narvii/chat/detail/ThreadAnnouncementFragment$bind$1;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment$bind$1;-><init>(Lcom/narvii/chat/detail/ThreadAnnouncementFragment;I)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Lw7/n;->b(Lw7/q;Le8/a;)Lw7/m;

    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method private final getClearListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->clearListener$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/view/View$OnClickListener;

    .line 9
    return-object v0
.end method

.method private final getContent()Landroid/widget/TextView;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->content$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 9
    return-object v0
.end method

.method private final getContentLayout()Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->contentLayout$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/view/View;

    .line 9
    return-object v0
.end method

.method private final getEditableBottom()Landroid/view/ViewGroup;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->editableBottom$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/view/ViewGroup;

    .line 9
    return-object v0
.end method

.method private final getEmptyLayout()Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->emptyLayout$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/view/View;

    .line 9
    return-object v0
.end method

.method private final getSwitchView()Landroid/widget/CheckBox;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->switchView$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/widget/CheckBox;

    .line 9
    return-object v0
.end method

.method public static synthetic n(Lcom/narvii/chat/detail/ThreadAnnouncementFragment;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->sendRequest$lambda$2(Lcom/narvii/chat/detail/ThreadAnnouncementFragment;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic o(Lcom/narvii/chat/detail/ThreadAnnouncementFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->updateView$lambda$0(Lcom/narvii/chat/detail/ThreadAnnouncementFragment;Landroid/view/View;)V

    return-void
.end method

.method private final sendRequest(Z)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->getProgressDialog()Lcom/narvii/util/dialog/ProgressDialog;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Lcom/narvii/chat/detail/f;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/narvii/chat/detail/f;-><init>(Lcom/narvii/chat/detail/ThreadAnnouncementFragment;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->getProgressDialog()Lcom/narvii/util/dialog/ProgressDialog;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->threadId()Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    const-string v3, "/chat/thread/"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    .line 55
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 56
    move-result-object v1

    .line 57
    .line 58
    .line 59
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 60
    move-result-object v2

    .line 61
    .line 62
    const-string v3, "pinAnnouncement"

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v3, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 66
    .line 67
    sget-object v3, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 68
    .line 69
    const-string v3, "extensions"

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v3, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->body(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 76
    move-result-object v0

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 80
    move-result-object v0

    .line 81
    .line 82
    iput-object v0, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->request:Lcom/narvii/util/http/ApiRequest;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->getApi()Lcom/narvii/util/http/ApiService;

    .line 86
    move-result-object v0

    .line 87
    .line 88
    iget-object v1, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->request:Lcom/narvii/util/http/ApiRequest;

    .line 89
    .line 90
    new-instance v2, Lcom/narvii/chat/detail/ThreadAnnouncementFragment$sendRequest$3;

    .line 91
    .line 92
    const-class v3, Lcom/narvii/chat/ThreadResponse;

    .line 93
    .line 94
    .line 95
    invoke-direct {v2, p0, p1, v3}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment$sendRequest$3;-><init>(Lcom/narvii/chat/detail/ThreadAnnouncementFragment;ZLjava/lang/Class;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 99
    return-void
.end method

.method private static final sendRequest$lambda$2(Lcom/narvii/chat/detail/ThreadAnnouncementFragment;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    .line 2
    const-string p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->request:Lcom/narvii/util/http/ApiRequest;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->getApi()Lcom/narvii/util/http/ApiService;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    iget-object p0, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->request:Lcom/narvii/util/http/ApiRequest;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p0}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    .line 19
    :cond_0
    return-void
.end method

.method private final updateView()V
    .locals 10

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->getSwitchView()Landroid/widget/CheckBox;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/app/theme/NVThemeFragment;->isDarkNVTheme()Z

    .line 8
    move-result v1

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    .line 13
    const v1, 0x7f0809e1

    .line 14
    goto :goto_0

    .line 15
    .line 16
    .line 17
    :cond_0
    const v1, 0x7f0809e0

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setButtonDrawable(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->isHost()Z

    .line 24
    move-result v0

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->isCoHost()Z

    .line 30
    move-result v0

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    const v1, 0x106000d

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    .line 46
    invoke-direct {p0}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->getClearListener()Landroid/view/View$OnClickListener;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    .line 50
    const v2, 0x7f120438

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v2, v0, v1}, Lcom/narvii/app/NVFragment;->setActionBarRightButton(ILandroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)V

    .line 54
    .line 55
    .line 56
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->isHost()Z

    .line 57
    move-result v0

    .line 58
    const/4 v1, 0x0

    .line 59
    .line 60
    const-string v2, "chatThread"

    .line 61
    .line 62
    const/16 v3, 0x8

    .line 63
    const/4 v4, 0x0

    .line 64
    .line 65
    if-nez v0, :cond_4

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->isCoHost()Z

    .line 69
    move-result v0

    .line 70
    .line 71
    if-eqz v0, :cond_3

    .line 72
    goto :goto_1

    .line 73
    .line 74
    .line 75
    :cond_3
    invoke-direct {p0}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->getEditableBottom()Landroid/view/ViewGroup;

    .line 76
    move-result-object v0

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 80
    goto :goto_2

    .line 81
    .line 82
    .line 83
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->getEditableBottom()Landroid/view/ViewGroup;

    .line 84
    move-result-object v0

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 88
    .line 89
    .line 90
    invoke-direct {p0}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->getSwitchView()Landroid/widget/CheckBox;

    .line 91
    move-result-object v0

    .line 92
    .line 93
    iget-object v5, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->chatThread:Lcom/narvii/model/ChatThread;

    .line 94
    .line 95
    if-nez v5, :cond_5

    .line 96
    .line 97
    .line 98
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 99
    move-object v5, v1

    .line 100
    .line 101
    .line 102
    :cond_5
    invoke-virtual {v5}, Lcom/narvii/model/ChatThread;->isPinAnnouncement()Ljava/lang/Boolean;

    .line 103
    move-result-object v5

    .line 104
    .line 105
    const-string v6, "isPinAnnouncement(...)"

    .line 106
    .line 107
    .line 108
    invoke-static {v5, v6}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 112
    move-result v5

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 116
    .line 117
    .line 118
    invoke-direct {p0}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->getSwitchView()Landroid/widget/CheckBox;

    .line 119
    move-result-object v0

    .line 120
    .line 121
    new-instance v5, Lcom/narvii/chat/detail/e;

    .line 122
    .line 123
    .line 124
    invoke-direct {v5, p0}, Lcom/narvii/chat/detail/e;-><init>(Lcom/narvii/chat/detail/ThreadAnnouncementFragment;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    .line 129
    :goto_2
    new-instance v0, Lcom/narvii/util/text/NVText;

    .line 130
    .line 131
    iget-object v5, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->chatThread:Lcom/narvii/model/ChatThread;

    .line 132
    .line 133
    if-nez v5, :cond_6

    .line 134
    .line 135
    .line 136
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 137
    move-object v5, v1

    .line 138
    .line 139
    .line 140
    :cond_6
    invoke-virtual {v5}, Lcom/narvii/model/ChatThread;->getAnnouncement()Ljava/lang/String;

    .line 141
    move-result-object v5

    .line 142
    .line 143
    if-nez v5, :cond_7

    .line 144
    .line 145
    const-string v5, ""

    .line 146
    :cond_7
    const/4 v6, 0x1

    .line 147
    .line 148
    new-array v7, v6, [Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    const-wide v8, 0xff4a4a4aL

    .line 154
    .line 155
    .line 156
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 157
    move-result-object v8

    .line 158
    .line 159
    aput-object v8, v7, v4

    .line 160
    .line 161
    .line 162
    invoke-direct {v0, v5, v7}, Lcom/narvii/util/text/NVText;-><init>(Ljava/lang/CharSequence;[Ljava/lang/Object;)V

    .line 163
    .line 164
    sget-object v5, Lcom/narvii/util/text/DefaultTagClickListener;->instance:Lcom/narvii/util/text/OnTagClickListener;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, v5, v6}, Lcom/narvii/util/text/NVText;->markHashtagAndLink(Lcom/narvii/util/text/OnTagClickListener;Z)I

    .line 168
    .line 169
    .line 170
    invoke-direct {p0}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->getContent()Landroid/widget/TextView;

    .line 171
    move-result-object v5

    .line 172
    .line 173
    .line 174
    invoke-static {}, Lcom/narvii/util/text/LinkTouchMovementMethod;->getInstanceIgnoreScroll()Lcom/narvii/util/text/LinkTouchMovementMethod;

    .line 175
    move-result-object v6

    .line 176
    .line 177
    .line 178
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 179
    .line 180
    .line 181
    invoke-direct {p0}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->getContent()Landroid/widget/TextView;

    .line 182
    move-result-object v5

    .line 183
    .line 184
    .line 185
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    .line 187
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->chatThread:Lcom/narvii/model/ChatThread;

    .line 188
    .line 189
    if-nez v0, :cond_8

    .line 190
    .line 191
    .line 192
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 193
    goto :goto_3

    .line 194
    :cond_8
    move-object v1, v0

    .line 195
    .line 196
    .line 197
    :goto_3
    invoke-virtual {v1}, Lcom/narvii/model/ChatThread;->getAnnouncement()Ljava/lang/String;

    .line 198
    move-result-object v0

    .line 199
    .line 200
    .line 201
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 202
    move-result v0

    .line 203
    .line 204
    if-eqz v0, :cond_9

    .line 205
    .line 206
    .line 207
    invoke-direct {p0}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->getContentLayout()Landroid/view/View;

    .line 208
    move-result-object v0

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 212
    .line 213
    .line 214
    invoke-direct {p0}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->getEmptyLayout()Landroid/view/View;

    .line 215
    move-result-object v0

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 219
    goto :goto_4

    .line 220
    .line 221
    .line 222
    :cond_9
    invoke-direct {p0}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->getContentLayout()Landroid/view/View;

    .line 223
    move-result-object v0

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 227
    .line 228
    .line 229
    invoke-direct {p0}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->getEmptyLayout()Landroid/view/View;

    .line 230
    move-result-object v0

    .line 231
    .line 232
    .line 233
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 234
    :goto_4
    return-void
.end method

.method private static final updateView$lambda$0(Lcom/narvii/chat/detail/ThreadAnnouncementFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->chatThread:Lcom/narvii/model/ChatThread;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const-string p1, "chatThread"

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 15
    const/4 p1, 0x0

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->isPinAnnouncement()Ljava/lang/Boolean;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 23
    move-result p1

    .line 24
    .line 25
    xor-int/lit8 p1, p1, 0x1

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, p1}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->sendRequest(Z)V

    .line 29
    return-void
.end method


# virtual methods
.method public final getApi()Lcom/narvii/util/http/ApiService;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->api$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "getValue(...)"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 14
    return-object v0
.end method

.method public final getChatHelper()Lcom/narvii/chat/util/ChatHelper;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->chatHelper$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/chat/util/ChatHelper;

    .line 9
    return-object v0
.end method

.method public final getProgressDialog()Lcom/narvii/util/dialog/ProgressDialog;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->progressDialog$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 9
    return-object v0
.end method

.method public final getRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->request:Lcom/narvii/util/http/ApiRequest;

    return-object v0
.end method

.method public final isCoHost()Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->getChatHelper()Lcom/narvii/chat/util/ChatHelper;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->chatThread:Lcom/narvii/model/ChatThread;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    const-string v1, "chatThread"

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 14
    const/4 v1, 0x0

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {v0, v1}, Lcom/narvii/chat/util/ChatHelper;->isCoHost(Lcom/narvii/model/ChatThread;)Z

    .line 18
    move-result v0

    .line 19
    return v0
.end method

.method public final isHost()Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->getChatHelper()Lcom/narvii/chat/util/ChatHelper;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->chatThread:Lcom/narvii/model/ChatThread;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    const-string v1, "chatThread"

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 14
    const/4 v1, 0x0

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {v0, v1}, Lcom/narvii/chat/util/ChatHelper;->isHost(Lcom/narvii/model/ChatThread;)Z

    .line 18
    move-result v0

    .line 19
    return v0
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
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
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string p1, "chatThread"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    const-class v0, Lcom/narvii/model/ChatThread;

    .line 12
    .line 13
    .line 14
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    const-string v0, "readAs(...)"

    .line 18
    .line 19
    .line 20
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    check-cast p1, Lcom/narvii/model/ChatThread;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->chatThread:Lcom/narvii/model/ChatThread;

    .line 25
    .line 26
    const-string p1, "config"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 39
    move-result p1

    .line 40
    const/4 v0, 0x0

    .line 41
    .line 42
    if-nez p1, :cond_0

    .line 43
    const/4 p1, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    move p1, v0

    .line 46
    :goto_0
    const/4 v1, 0x2

    .line 47
    const/4 v2, 0x0

    .line 48
    .line 49
    .line 50
    invoke-static {p0, p1, v0, v1, v2}, Lcom/narvii/app/theme/NVThemeFragment;->setDarkNVTheme$default(Lcom/narvii/app/theme/NVThemeFragment;ZZILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    const p1, 0x7f120149

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 57
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
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
    const-string p3, "inflater"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const p3, 0x7f0d0330

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 2
    .param p1    # Lcom/narvii/notification/Notification;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "n"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 8
    .line 9
    instance-of v0, v0, Lcom/narvii/model/ChatThread;

    .line 10
    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 14
    .line 15
    const-string v1, "update"

    .line 16
    .line 17
    if-eq v0, v1, :cond_0

    .line 18
    .line 19
    const-string v1, "edit"

    .line 20
    .line 21
    if-ne v0, v1, :cond_3

    .line 22
    .line 23
    :cond_0
    iget-object v0, p1, Lcom/narvii/notification/Notification;->bundle:Landroid/os/Bundle;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    const-string v1, "_fromChatFragment"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 31
    move-result v0

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    return-void

    .line 35
    .line 36
    :cond_1
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 37
    .line 38
    const-string v0, "null cannot be cast to non-null type com.narvii.model.ChatThread"

    .line 39
    .line 40
    .line 41
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    check-cast p1, Lcom/narvii/model/ChatThread;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    iget-object v1, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->chatThread:Lcom/narvii/model/ChatThread;

    .line 50
    .line 51
    if-nez v1, :cond_2

    .line 52
    .line 53
    const-string v1, "chatThread"

    .line 54
    .line 55
    .line 56
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 57
    const/4 v1, 0x0

    .line 58
    .line 59
    .line 60
    :cond_2
    invoke-virtual {v1}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    .line 61
    move-result-object v1

    .line 62
    .line 63
    .line 64
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 65
    move-result v0

    .line 66
    .line 67
    if-eqz v0, :cond_3

    .line 68
    .line 69
    iput-object p1, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->chatThread:Lcom/narvii/model/ChatThread;

    .line 70
    .line 71
    .line 72
    invoke-direct {p0}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->updateView()V

    .line 73
    :cond_3
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
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
    const-string v0, "view"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->updateView()V

    .line 12
    return-void
.end method

.method public final setRequest(Lcom/narvii/util/http/ApiRequest;)V
    .locals 0
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->request:Lcom/narvii/util/http/ApiRequest;

    return-void
.end method

.method public final threadId()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->chatThread:Lcom/narvii/model/ChatThread;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, "chatThread"

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 10
    const/4 v0, 0x0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    const-string v1, "id(...)"

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    return-object v0
.end method

.method public final userId()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->chatThread:Lcom/narvii/model/ChatThread;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, "chatThread"

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 10
    const/4 v0, 0x0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->uid()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    const-string v1, "uid(...)"

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    return-object v0
.end method
