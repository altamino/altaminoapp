.class public final synthetic Lcom/narvii/amino/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/amino/CommunityNavBarFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/amino/CommunityNavBarFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/amino/a;->a:Lcom/narvii/amino/CommunityNavBarFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/amino/a;->a:Lcom/narvii/amino/CommunityNavBarFragment;

    invoke-static {v0, p1}, Lcom/narvii/amino/CommunityNavBarFragment;->n(Lcom/narvii/amino/CommunityNavBarFragment;Landroid/view/View;)V

    return-void
.end method
