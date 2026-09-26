.class public final Lcom/narvii/util/statistics/constants/EventConstants$CreatePost;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/statistics/constants/EventConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CreatePost"
.end annotation


# static fields
.field public static final ADD_CATEGORY:Ljava/lang/String; = "Add Category"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ADD_GALLERY_PHOTOS:Ljava/lang/String; = "Add gallery photos"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ADD_KEYWORDS:Ljava/lang/String; = "Add keywords"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ADD_PHOTO:Ljava/lang/String; = "Add photo"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ADD_PROFILE_PHOTO:Ljava/lang/String; = "Add profile photo"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final BACKGROUND_COLOR:Ljava/lang/String; = "Background Color"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final BACKGROUND_IMAGE:Ljava/lang/String; = "Background Image"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final CREATE_POST:Ljava/lang/String; = "Create Post"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final FILL_IN_ABOUT:Ljava/lang/String; = "Fill in about"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final GATED:Ljava/lang/String; = "Gated"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final HAS_VIDEO:Ljava/lang/String; = "Has Video"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Lcom/narvii/util/statistics/constants/EventConstants$CreatePost;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final LINK_RELATED_FAVORITES:Ljava/lang/String; = "Link Related favorites"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final REMOVE_LOCATION:Ljava/lang/String; = "Remove location"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TOTAL_EDITED_POSTS:Ljava/lang/String; = "Total Edited Posts"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TOTAL_NEW_POSTS:Ljava/lang/String; = "Total New Posts"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final USER_EDITS_A_POST:Ljava/lang/String; = "User Edits a Post"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/narvii/util/statistics/constants/EventConstants$CreatePost;

    invoke-direct {v0}, Lcom/narvii/util/statistics/constants/EventConstants$CreatePost;-><init>()V

    sput-object v0, Lcom/narvii/util/statistics/constants/EventConstants$CreatePost;->INSTANCE:Lcom/narvii/util/statistics/constants/EventConstants$CreatePost;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method
