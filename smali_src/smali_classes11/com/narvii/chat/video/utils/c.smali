.class public final synthetic Lcom/narvii/chat/video/utils/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/util/Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/util/Callback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/video/utils/c;->a:Lcom/narvii/util/Callback;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/video/utils/c;->a:Lcom/narvii/util/Callback;

    invoke-static {v0, p1}, Lcom/narvii/chat/video/utils/VVChatHelper;->f(Lcom/narvii/util/Callback;Landroid/view/View;)V

    return-void
.end method
