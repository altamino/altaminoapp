.class public final synthetic Lcom/narvii/amino/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout$OnHeaderInvalidatedListener;


# instance fields
.field public final synthetic a:Lcom/narvii/amino/HomeFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/amino/HomeFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/amino/e;->a:Lcom/narvii/amino/HomeFragment;

    return-void
.end method


# virtual methods
.method public final notifyHeaderInvalidated(Landroid/view/View;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/amino/e;->a:Lcom/narvii/amino/HomeFragment;

    invoke-static {v0, p1, p2}, Lcom/narvii/amino/HomeFragment;->p(Lcom/narvii/amino/HomeFragment;Landroid/view/View;Z)V

    return-void
.end method
