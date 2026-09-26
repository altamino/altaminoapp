.class public final synthetic Lcom/narvii/chat/video/utils/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/app/NVActivity;

.field public final synthetic b:Lcom/narvii/model/api/ReputationPostResponse;

.field public final synthetic c:Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/app/NVActivity;Lcom/narvii/model/api/ReputationPostResponse;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/video/utils/a0;->a:Lcom/narvii/app/NVActivity;

    iput-object p2, p0, Lcom/narvii/chat/video/utils/a0;->b:Lcom/narvii/model/api/ReputationPostResponse;

    iput-object p3, p0, Lcom/narvii/chat/video/utils/a0;->c:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/video/utils/a0;->a:Lcom/narvii/app/NVActivity;

    iget-object v1, p0, Lcom/narvii/chat/video/utils/a0;->b:Lcom/narvii/model/api/ReputationPostResponse;

    iget-object v2, p0, Lcom/narvii/chat/video/utils/a0;->c:Landroid/content/DialogInterface$OnDismissListener;

    invoke-static {v0, v1, v2}, Lcom/narvii/chat/video/utils/VVChatHelper$showReputationClaimDialog$1;->a(Lcom/narvii/app/NVActivity;Lcom/narvii/model/api/ReputationPostResponse;Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method
