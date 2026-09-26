.class public final Landroidx/browser/trusted/sharing/ShareTarget;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/browser/trusted/sharing/ShareTarget$Params;,
        Landroidx/browser/trusted/sharing/ShareTarget$FileFormField;,
        Landroidx/browser/trusted/sharing/ShareTarget$EncodingType;,
        Landroidx/browser/trusted/sharing/ShareTarget$RequestMethod;
    }
.end annotation


# static fields
.field public static final ENCODING_TYPE_MULTIPART:Ljava/lang/String; = "multipart/form-data"

.field public static final ENCODING_TYPE_URL_ENCODED:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field public static final KEY_ACTION:Ljava/lang/String; = "androidx.browser.trusted.sharing.KEY_ACTION"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "IntentName"
        }
    .end annotation
.end field

.field public static final KEY_ENCTYPE:Ljava/lang/String; = "androidx.browser.trusted.sharing.KEY_ENCTYPE"

.field public static final KEY_METHOD:Ljava/lang/String; = "androidx.browser.trusted.sharing.KEY_METHOD"

.field public static final KEY_PARAMS:Ljava/lang/String; = "androidx.browser.trusted.sharing.KEY_PARAMS"

.field public static final METHOD_GET:Ljava/lang/String; = "GET"

.field public static final METHOD_POST:Ljava/lang/String; = "POST"


# instance fields
.field public final action:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final encodingType:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final method:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final params:Landroidx/browser/trusted/sharing/ShareTarget$Params;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/browser/trusted/sharing/ShareTarget$Params;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/browser/trusted/sharing/ShareTarget$Params;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/browser/trusted/sharing/ShareTarget;->action:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p2, p0, Landroidx/browser/trusted/sharing/ShareTarget;->method:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p3, p0, Landroidx/browser/trusted/sharing/ShareTarget;->encodingType:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p4, p0, Landroidx/browser/trusted/sharing/ShareTarget;->params:Landroidx/browser/trusted/sharing/ShareTarget$Params;

    .line 12
    return-void
.end method
