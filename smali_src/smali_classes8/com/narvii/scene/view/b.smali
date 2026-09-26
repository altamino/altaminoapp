.class public final synthetic Lcom/narvii/scene/view/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/scene/view/AudioOptionPanel;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/scene/view/AudioOptionPanel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/scene/view/b;->a:Lcom/narvii/scene/view/AudioOptionPanel;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/scene/view/b;->a:Lcom/narvii/scene/view/AudioOptionPanel;

    invoke-static {v0, p1}, Lcom/narvii/scene/view/AudioOptionPanel;->a(Lcom/narvii/scene/view/AudioOptionPanel;Landroid/view/View;)V

    return-void
.end method
