.class public final synthetic Lcom/narvii/master/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/master/MasterActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/master/MasterActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/master/g;->a:Lcom/narvii/master/MasterActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/master/g;->a:Lcom/narvii/master/MasterActivity;

    invoke-static {v0, p1}, Lcom/narvii/master/MasterActivity;->x(Lcom/narvii/master/MasterActivity;Landroid/view/View;)V

    return-void
.end method
