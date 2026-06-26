.class final Lcom/narvii/chat/global/GlobalChatHelper$showJoinAminoFirstHint$1;
.super Ljava/lang/Object;
.source "GlobalChatHelper.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/global/GlobalChatHelper;->showJoinAminoFirstHint(ZILcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $dlg:Lcom/narvii/widget/ACMAlertDialog;


# direct methods
.method constructor <init>(Lcom/narvii/widget/ACMAlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatHelper$showJoinAminoFirstHint$1;->$dlg:Lcom/narvii/widget/ACMAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 218
    iget-object p1, p0, Lcom/narvii/chat/global/GlobalChatHelper$showJoinAminoFirstHint$1;->$dlg:Lcom/narvii/widget/ACMAlertDialog;

    const-string v0, "Cancel"

    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    return-void
.end method
