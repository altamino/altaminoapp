.class public final synthetic Lcom/narvii/permisson/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le8/l;


# direct methods
.method public synthetic constructor <init>(Le8/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/permisson/j;->a:Le8/l;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/permisson/j;->a:Le8/l;

    invoke-static {v0, p1}, Lcom/narvii/permisson/PermissionUtilsV2;->a(Le8/l;Landroid/view/View;)V

    return-void
.end method
