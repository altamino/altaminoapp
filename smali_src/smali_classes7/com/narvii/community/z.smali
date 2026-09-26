.class public final synthetic Lcom/narvii/community/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/community/VisitorBarHost;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/community/VisitorBarHost;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/community/z;->a:Lcom/narvii/community/VisitorBarHost;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/community/z;->a:Lcom/narvii/community/VisitorBarHost;

    invoke-static {v0, p1}, Lcom/narvii/community/VisitorBarHost;->a(Lcom/narvii/community/VisitorBarHost;Landroid/view/View;)V

    return-void
.end method
