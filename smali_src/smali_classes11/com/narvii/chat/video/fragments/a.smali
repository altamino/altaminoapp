.class public final synthetic Lcom/narvii/chat/video/fragments/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout$OnUserCountClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/chat/video/fragments/LiveCallFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/video/fragments/LiveCallFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/video/fragments/a;->a:Lcom/narvii/chat/video/fragments/LiveCallFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/a;->a:Lcom/narvii/chat/video/fragments/LiveCallFragment;

    invoke-static {v0, p1}, Lcom/narvii/chat/video/fragments/LiveCallFragment;->v(Lcom/narvii/chat/video/fragments/LiveCallFragment;Landroid/view/View;)V

    return-void
.end method
