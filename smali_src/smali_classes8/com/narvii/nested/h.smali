.class public final synthetic Lcom/narvii/nested/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic a:Lcom/narvii/nested/NVAppBarLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/nested/NVAppBarLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/nested/h;->a:Lcom/narvii/nested/NVAppBarLayout;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/nested/h;->a:Lcom/narvii/nested/NVAppBarLayout;

    invoke-static {v0, p1, p2}, Lcom/narvii/nested/NVAppBarLayout;->a(Lcom/narvii/nested/NVAppBarLayout;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    return-object p1
.end method
