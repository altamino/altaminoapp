.class public Landroidx/webkit/internal/CookieManagerAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebViewCookieManagerBoundaryInterface;


# direct methods
.method public constructor <init>(Lorg/chromium/support_lib_boundary/WebViewCookieManagerBoundaryInterface;)V
    .locals 0
    .param p1    # Lorg/chromium/support_lib_boundary/WebViewCookieManagerBoundaryInterface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/webkit/internal/CookieManagerAdapter;->mBoundaryInterface:Lorg/chromium/support_lib_boundary/WebViewCookieManagerBoundaryInterface;

    .line 6
    return-void
.end method
