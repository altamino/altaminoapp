.class public final synthetic Lcom/narvii/chat/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/chat/ChatFansOnlyMaskFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/ChatFansOnlyMaskFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/i;->a:Lcom/narvii/chat/ChatFansOnlyMaskFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/i;->a:Lcom/narvii/chat/ChatFansOnlyMaskFragment;

    invoke-static {v0, p1}, Lcom/narvii/chat/ChatFansOnlyMaskFragment;->o(Lcom/narvii/chat/ChatFansOnlyMaskFragment;Landroid/view/View;)V

    return-void
.end method
