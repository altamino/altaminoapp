.class public final synthetic Lcom/narvii/prefs/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/prefs/DevSelectionFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/prefs/DevSelectionFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/prefs/d;->a:Lcom/narvii/prefs/DevSelectionFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/prefs/d;->a:Lcom/narvii/prefs/DevSelectionFragment;

    invoke-static {v0, p1}, Lcom/narvii/prefs/DevSelectionFragment;->t(Lcom/narvii/prefs/DevSelectionFragment;Landroid/view/View;)V

    return-void
.end method
