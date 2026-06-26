.class public final synthetic Lcom/narvii/services/-$$Lambda$PushInviteHelper$oL6p7qzgmhB-ltlYm6Du-DMeoUE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/narvii/util/Callback;


# static fields
.field public static final synthetic INSTANCE:Lcom/narvii/services/-$$Lambda$PushInviteHelper$oL6p7qzgmhB-ltlYm6Du-DMeoUE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/narvii/services/-$$Lambda$PushInviteHelper$oL6p7qzgmhB-ltlYm6Du-DMeoUE;

    invoke-direct {v0}, Lcom/narvii/services/-$$Lambda$PushInviteHelper$oL6p7qzgmhB-ltlYm6Du-DMeoUE;-><init>()V

    sput-object v0, Lcom/narvii/services/-$$Lambda$PushInviteHelper$oL6p7qzgmhB-ltlYm6Du-DMeoUE;->INSTANCE:Lcom/narvii/services/-$$Lambda$PushInviteHelper$oL6p7qzgmhB-ltlYm6Du-DMeoUE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/narvii/chat/video/overlay/VVchatPermissionInviteListener;

    invoke-static {p1}, Lcom/narvii/services/PushInviteHelper;->lambda$onPushPayload$0(Lcom/narvii/chat/video/overlay/VVchatPermissionInviteListener;)V

    return-void
.end method
