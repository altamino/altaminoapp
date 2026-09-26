.class public final synthetic Lcom/narvii/prefs/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/prefs/DevSelectionFragment;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/narvii/prefs/DevSelectionFragment$Adapter;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/prefs/DevSelectionFragment;Ljava/lang/String;Lcom/narvii/prefs/DevSelectionFragment$Adapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/prefs/e;->a:Lcom/narvii/prefs/DevSelectionFragment;

    iput-object p2, p0, Lcom/narvii/prefs/e;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/narvii/prefs/e;->c:Lcom/narvii/prefs/DevSelectionFragment$Adapter;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/narvii/prefs/e;->a:Lcom/narvii/prefs/DevSelectionFragment;

    iget-object v1, p0, Lcom/narvii/prefs/e;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/narvii/prefs/e;->c:Lcom/narvii/prefs/DevSelectionFragment$Adapter;

    invoke-static {v0, v1, v2, p1}, Lcom/narvii/prefs/DevSelectionFragment$Adapter;->f(Lcom/narvii/prefs/DevSelectionFragment;Ljava/lang/String;Lcom/narvii/prefs/DevSelectionFragment$Adapter;Landroid/view/View;)V

    return-void
.end method
