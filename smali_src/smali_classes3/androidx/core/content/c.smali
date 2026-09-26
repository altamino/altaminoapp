.class public final synthetic Landroidx/core/content/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/util/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Landroid/net/Uri;

    invoke-static {p1}, Landroidx/core/content/IntentSanitizer$Builder;->e(Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method
