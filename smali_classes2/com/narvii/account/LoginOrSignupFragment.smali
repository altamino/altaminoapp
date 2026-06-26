.class public Lcom/narvii/account/LoginOrSignupFragment;
.super Lcom/narvii/account/AccountBaseFragment;
.source "LoginOrSignupFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/narvii/app/FragmentOnBackListener;
.implements Lcom/narvii/services/EventLogProfileService$EventLogProfileListener;


# static fields
.field public static final LOGIN_WITH_JOIN_COMMUNITY_INVITER:Ljava/lang/String; = "inviter"

.field public static final MOBILE_SIGN_UP_PROVIDER:I = 0x8

.field public static mobileSignUpProvider:I = 0x8

.field public static showPhoneNumberItem:Z = true


# instance fields
.field private accountTagline:Landroid/widget/TextView;

.field private animatorContainer:Landroid/view/ViewGroup;

.field animatorSet:Landroid/animation/AnimatorSet;

.field private backButton:Landroid/view/View;

.field bitmapMaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field eventLogProfileService:Lcom/narvii/services/EventLogProfileService;

.field eventProfileGot:Z

.field imgAminoLogo:Lcom/narvii/widget/TintButton;

.field imgCommunityIcon:Lcom/narvii/widget/NVImageView;

.field inviteCommunityContainer:Landroid/view/View;

.field inviteCommunityIcon:Lcom/narvii/widget/NVImageView;

.field inviteCommunityName:Landroid/widget/TextView;

.field invitorName:Landroid/widget/TextView;

.field loginButton:Landroid/widget/Button;

.field loginHint:Landroid/widget/TextView;

.field mWebView:Landroid/webkit/WebView;

.field pendingStart:Z

.field receiver:Landroid/content/BroadcastReceiver;

.field sharedPreferences:Landroid/content/SharedPreferences;

.field signupButton:Landroid/widget/Button;

.field startButton:Landroid/widget/Button;

.field tvCommunityName:Landroid/widget/TextView;

.field tvTagline:Landroid/widget/TextView;

.field viewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 78
    invoke-direct {p0}, Lcom/narvii/account/AccountBaseFragment;-><init>()V

    .line 110
    new-instance v0, Lcom/narvii/account/LoginOrSignupFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/account/LoginOrSignupFragment$1;-><init>(Lcom/narvii/account/LoginOrSignupFragment;)V

    iput-object v0, p0, Lcom/narvii/account/LoginOrSignupFragment;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/account/LoginOrSignupFragment;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/narvii/account/LoginOrSignupFragment;->clickStartButton()V

    return-void
.end method

.method private clickLogin()V
    .locals 4

    .line 511
    sget-object v0, Lcom/narvii/logging/ActSemantic;->login:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v1, "EngagementArea"

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 513
    new-instance v0, Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    const v2, 0x7f0f0051

    .line 514
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    const v2, 0x7f0f0035

    .line 515
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 518
    new-instance v1, Lcom/narvii/account/LoginOrSignupFragment$7;

    invoke-direct {v1, p0}, Lcom/narvii/account/LoginOrSignupFragment$7;-><init>(Lcom/narvii/account/LoginOrSignupFragment;)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 565
    new-instance v1, Lcom/narvii/account/LoginOrSignupFragment$8;

    invoke-direct {v1, p0}, Lcom/narvii/account/LoginOrSignupFragment$8;-><init>(Lcom/narvii/account/LoginOrSignupFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 571
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    return-void
.end method

.method private clickStartButton()V
    .locals 3

    .line 503
    sget-object v0, Lcom/narvii/logging/ActSemantic;->start:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v1, "EngagementArea"

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 504
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "clickStartButton"

    const/4 v2, 0x1

    .line 505
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 506
    invoke-virtual {p0, v1, v0}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 507
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method

.method private createAnimation(Landroid/view/View;)V
    .locals 53

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    const v1, 0x7f090548

    .line 597
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f090549

    .line 598
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/ImageView;

    const v2, 0x7f090553

    .line 599
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/ImageView;

    const v2, 0x7f090554

    .line 600
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/ImageView;

    const v2, 0x7f090555

    .line 601
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/ImageView;

    const v2, 0x7f090556

    .line 602
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/ImageView;

    const v2, 0x7f090557

    .line 603
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/ImageView;

    const v2, 0x7f090558

    .line 604
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/ImageView;

    const v2, 0x7f090559

    .line 605
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/ImageView;

    const v2, 0x7f09055a

    .line 606
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/ImageView;

    const v2, 0x7f09054d

    .line 607
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/ImageView;

    const v2, 0x7f09054e

    .line 608
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/widget/ImageView;

    const v2, 0x7f09054f

    .line 609
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f090550

    .line 610
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v16, v3

    const v3, 0x7f090551

    .line 611
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v17, v3

    const v3, 0x7f090552

    .line 612
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v18, v3

    const v3, 0x7f09054a

    .line 613
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v19, v3

    const v3, 0x7f09054b

    .line 614
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v20, v3

    const v3, 0x7f09054c

    .line 615
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v21, v3

    const v3, 0x7f090542

    .line 616
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v22, v3

    const v3, 0x7f090543

    .line 617
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v23, v3

    const v3, 0x7f090544

    .line 618
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v24, v3

    const v3, 0x7f090545

    .line 619
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v25, v3

    const v3, 0x7f090546

    .line 620
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v26, v3

    const v3, 0x7f090547

    .line 621
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v27, v3

    const v3, 0x7f09055b

    .line 622
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    move-object/from16 v3, v28

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v28, v3

    const v3, 0x7f09055c

    .line 623
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    move-object/from16 v3, v30

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v30, v3

    const v3, 0x7f09055d

    .line 624
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    move-object/from16 v3, v32

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v32, v3

    const v3, 0x7f080421

    .line 626
    invoke-virtual {v6, v1, v3}, Lcom/narvii/account/LoginOrSignupFragment;->loadBitmap(Landroid/widget/ImageView;I)Landroid/graphics/Bitmap;

    const v1, 0x7f080422

    .line 627
    invoke-virtual {v6, v7, v1}, Lcom/narvii/account/LoginOrSignupFragment;->loadBitmap(Landroid/widget/ImageView;I)Landroid/graphics/Bitmap;

    const v1, 0x7f08042d

    .line 628
    invoke-virtual {v6, v8, v1}, Lcom/narvii/account/LoginOrSignupFragment;->loadBitmap(Landroid/widget/ImageView;I)Landroid/graphics/Bitmap;

    const v1, 0x7f08042e

    .line 629
    invoke-virtual {v6, v9, v1}, Lcom/narvii/account/LoginOrSignupFragment;->loadBitmap(Landroid/widget/ImageView;I)Landroid/graphics/Bitmap;

    const v1, 0x7f08042f

    .line 630
    invoke-virtual {v6, v10, v1}, Lcom/narvii/account/LoginOrSignupFragment;->loadBitmap(Landroid/widget/ImageView;I)Landroid/graphics/Bitmap;

    const v1, 0x7f080430

    .line 631
    invoke-virtual {v6, v11, v1}, Lcom/narvii/account/LoginOrSignupFragment;->loadBitmap(Landroid/widget/ImageView;I)Landroid/graphics/Bitmap;

    const v1, 0x7f080431

    .line 632
    invoke-virtual {v6, v12, v1}, Lcom/narvii/account/LoginOrSignupFragment;->loadBitmap(Landroid/widget/ImageView;I)Landroid/graphics/Bitmap;

    const v1, 0x7f080432

    .line 633
    invoke-virtual {v6, v13, v1}, Lcom/narvii/account/LoginOrSignupFragment;->loadBitmap(Landroid/widget/ImageView;I)Landroid/graphics/Bitmap;

    const v1, 0x7f080433

    .line 634
    invoke-virtual {v6, v14, v1}, Lcom/narvii/account/LoginOrSignupFragment;->loadBitmap(Landroid/widget/ImageView;I)Landroid/graphics/Bitmap;

    const v1, 0x7f080434

    .line 635
    invoke-virtual {v6, v15, v1}, Lcom/narvii/account/LoginOrSignupFragment;->loadBitmap(Landroid/widget/ImageView;I)Landroid/graphics/Bitmap;

    const v1, 0x7f080426

    .line 636
    invoke-virtual {v6, v5, v1}, Lcom/narvii/account/LoginOrSignupFragment;->loadBitmap(Landroid/widget/ImageView;I)Landroid/graphics/Bitmap;

    const v1, 0x7f080427

    .line 637
    invoke-virtual {v6, v4, v1}, Lcom/narvii/account/LoginOrSignupFragment;->loadBitmap(Landroid/widget/ImageView;I)Landroid/graphics/Bitmap;

    const v1, 0x7f080428

    .line 638
    invoke-virtual {v6, v2, v1}, Lcom/narvii/account/LoginOrSignupFragment;->loadBitmap(Landroid/widget/ImageView;I)Landroid/graphics/Bitmap;

    const v1, 0x7f080429

    move-object/from16 v3, v16

    .line 639
    invoke-virtual {v6, v3, v1}, Lcom/narvii/account/LoginOrSignupFragment;->loadBitmap(Landroid/widget/ImageView;I)Landroid/graphics/Bitmap;

    const v1, 0x7f08042a

    move-object/from16 v16, v2

    move-object/from16 v2, v17

    .line 640
    invoke-virtual {v6, v2, v1}, Lcom/narvii/account/LoginOrSignupFragment;->loadBitmap(Landroid/widget/ImageView;I)Landroid/graphics/Bitmap;

    const v1, 0x7f08042b

    move-object/from16 v2, v18

    .line 641
    invoke-virtual {v6, v2, v1}, Lcom/narvii/account/LoginOrSignupFragment;->loadBitmap(Landroid/widget/ImageView;I)Landroid/graphics/Bitmap;

    const v1, 0x7f080423

    move-object/from16 v2, v19

    .line 642
    invoke-virtual {v6, v2, v1}, Lcom/narvii/account/LoginOrSignupFragment;->loadBitmap(Landroid/widget/ImageView;I)Landroid/graphics/Bitmap;

    const v1, 0x7f080424

    move-object/from16 v2, v20

    .line 643
    invoke-virtual {v6, v2, v1}, Lcom/narvii/account/LoginOrSignupFragment;->loadBitmap(Landroid/widget/ImageView;I)Landroid/graphics/Bitmap;

    const v1, 0x7f080425

    move-object/from16 v2, v21

    .line 644
    invoke-virtual {v6, v2, v1}, Lcom/narvii/account/LoginOrSignupFragment;->loadBitmap(Landroid/widget/ImageView;I)Landroid/graphics/Bitmap;

    const v1, 0x7f08041a

    move-object/from16 v2, v22

    .line 645
    invoke-virtual {v6, v2, v1}, Lcom/narvii/account/LoginOrSignupFragment;->loadBitmap(Landroid/widget/ImageView;I)Landroid/graphics/Bitmap;

    const v1, 0x7f08041b

    move-object/from16 v2, v23

    .line 646
    invoke-virtual {v6, v2, v1}, Lcom/narvii/account/LoginOrSignupFragment;->loadBitmap(Landroid/widget/ImageView;I)Landroid/graphics/Bitmap;

    const v1, 0x7f08041c

    move-object/from16 v2, v24

    .line 647
    invoke-virtual {v6, v2, v1}, Lcom/narvii/account/LoginOrSignupFragment;->loadBitmap(Landroid/widget/ImageView;I)Landroid/graphics/Bitmap;

    const v1, 0x7f08041d

    move-object/from16 v2, v25

    .line 648
    invoke-virtual {v6, v2, v1}, Lcom/narvii/account/LoginOrSignupFragment;->loadBitmap(Landroid/widget/ImageView;I)Landroid/graphics/Bitmap;

    const v1, 0x7f08041e

    move-object/from16 v2, v26

    .line 649
    invoke-virtual {v6, v2, v1}, Lcom/narvii/account/LoginOrSignupFragment;->loadBitmap(Landroid/widget/ImageView;I)Landroid/graphics/Bitmap;

    const v1, 0x7f08041f

    move-object/from16 v2, v27

    .line 650
    invoke-virtual {v6, v2, v1}, Lcom/narvii/account/LoginOrSignupFragment;->loadBitmap(Landroid/widget/ImageView;I)Landroid/graphics/Bitmap;

    const v1, 0x7f08042c

    move-object/from16 v2, v28

    .line 651
    invoke-virtual {v6, v2, v1}, Lcom/narvii/account/LoginOrSignupFragment;->loadBitmap(Landroid/widget/ImageView;I)Landroid/graphics/Bitmap;

    .line 653
    iget-object v1, v6, Lcom/narvii/account/LoginOrSignupFragment;->viewList:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 654
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v23, v1

    move-object/from16 v1, v22

    check-cast v1, Landroid/widget/ImageView;

    move-object/from16 v28, v2

    .line 655
    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v2

    move-object/from16 v22, v3

    .line 656
    iget-object v3, v6, Lcom/narvii/account/LoginOrSignupFragment;->bitmapMaps:Ljava/util/HashMap;

    move-object/from16 v24, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    const v4, 0x7f09055c

    if-eq v2, v4, :cond_1

    const v4, 0x7f09055d

    if-ne v2, v4, :cond_0

    goto :goto_1

    :cond_0
    move-object v2, v3

    const v3, 0x7f09055b

    goto :goto_2

    :cond_1
    const v4, 0x7f09055d

    .line 658
    :goto_1
    iget-object v2, v6, Lcom/narvii/account/LoginOrSignupFragment;->bitmapMaps:Ljava/util/HashMap;

    const v3, 0x7f09055b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    :goto_2
    if-eqz v2, :cond_2

    .line 661
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    move-object/from16 v3, v22

    move-object/from16 v1, v23

    move-object/from16 v4, v24

    move-object/from16 v2, v28

    goto :goto_0

    :cond_3
    move-object/from16 v28, v2

    move-object/from16 v22, v3

    move-object/from16 v24, v4

    const v1, 0x7f0907f5

    .line 666
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v1, 0x7f0907f6

    .line 667
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v1, 0x7f0907f7

    .line 668
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v1, 0x7f0907f8

    .line 669
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v23, v1

    const v1, 0x7f0907f9

    .line 670
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v25, v1

    const v1, 0x7f0907fa

    .line 671
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 673
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v26, 0x2710

    move-object/from16 v29, v2

    const/4 v2, 0x3

    move-object/from16 v31, v3

    new-array v3, v2, [F

    .line 674
    fill-array-data v3, :array_0

    const-string v33, "scaleX"

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    move-object/from16 v37, v1

    move-object/from16 v35, v23

    move-object/from16 v36, v25

    move-object v1, v7

    move-object/from16 v38, v16

    move-object/from16 v40, v17

    move-object/from16 v41, v18

    move-object/from16 v42, v19

    move-object/from16 v43, v20

    move-object/from16 v44, v21

    move-object/from16 v39, v22

    move-object/from16 v45, v28

    move-object/from16 v48, v29

    move-object/from16 v46, v30

    move-object/from16 v49, v31

    move-object/from16 v47, v32

    move-object/from16 v16, v3

    move-object/from16 v17, v15

    const/4 v15, 0x3

    move-wide/from16 v2, v26

    move-object/from16 v51, v4

    move-object/from16 v50, v24

    move-object/from16 v4, v33

    move-object/from16 v52, v5

    move-object/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/narvii/account/LoginOrSignupFragment;->createInfiniteAnimator(Ljava/lang/Object;JLjava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    move-object/from16 v5, v34

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v2, 0x2710

    new-array v15, v15, [F

    .line 675
    fill-array-data v15, :array_1

    const-string v4, "scaleY"

    move-object/from16 v0, p0

    move-object v7, v5

    move-object v5, v15

    invoke-direct/range {v0 .. v5}, Lcom/narvii/account/LoginOrSignupFragment;->createInfiniteAnimator(Ljava/lang/Object;JLjava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 677
    invoke-direct {v6, v8, v0}, Lcom/narvii/account/LoginOrSignupFragment;->createRotationAnimator(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 678
    invoke-direct {v6, v9, v1}, Lcom/narvii/account/LoginOrSignupFragment;->createRotationAnimator(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 679
    invoke-direct {v6, v10, v0}, Lcom/narvii/account/LoginOrSignupFragment;->createRotationAnimator(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 680
    invoke-direct {v6, v11, v1}, Lcom/narvii/account/LoginOrSignupFragment;->createRotationAnimator(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 681
    invoke-direct {v6, v12, v0}, Lcom/narvii/account/LoginOrSignupFragment;->createRotationAnimator(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 682
    invoke-direct {v6, v13, v1}, Lcom/narvii/account/LoginOrSignupFragment;->createRotationAnimator(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 683
    invoke-direct {v6, v14, v0}, Lcom/narvii/account/LoginOrSignupFragment;->createRotationAnimator(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v17

    .line 684
    invoke-direct {v6, v2, v1}, Lcom/narvii/account/LoginOrSignupFragment;->createRotationAnimator(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v52

    .line 685
    invoke-direct {v6, v2, v0}, Lcom/narvii/account/LoginOrSignupFragment;->createRotationAnimator(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v50

    .line 686
    invoke-direct {v6, v2, v1}, Lcom/narvii/account/LoginOrSignupFragment;->createRotationAnimator(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v38

    .line 687
    invoke-direct {v6, v2, v0}, Lcom/narvii/account/LoginOrSignupFragment;->createRotationAnimator(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, v39

    .line 688
    invoke-direct {v6, v3, v1}, Lcom/narvii/account/LoginOrSignupFragment;->createRotationAnimator(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, v40

    .line 689
    invoke-direct {v6, v3, v0}, Lcom/narvii/account/LoginOrSignupFragment;->createRotationAnimator(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, v41

    .line 690
    invoke-direct {v6, v3, v1}, Lcom/narvii/account/LoginOrSignupFragment;->createRotationAnimator(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, v42

    .line 691
    invoke-direct {v6, v3, v0}, Lcom/narvii/account/LoginOrSignupFragment;->createRotationAnimator(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, v43

    .line 692
    invoke-direct {v6, v3, v1}, Lcom/narvii/account/LoginOrSignupFragment;->createRotationAnimator(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, v44

    .line 693
    invoke-direct {v6, v3, v0}, Lcom/narvii/account/LoginOrSignupFragment;->createRotationAnimator(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v51

    .line 694
    invoke-direct {v6, v2, v0}, Lcom/narvii/account/LoginOrSignupFragment;->createRotationAnimator(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v48

    .line 695
    invoke-direct {v6, v2, v1}, Lcom/narvii/account/LoginOrSignupFragment;->createRotationAnimator(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v49

    .line 696
    invoke-direct {v6, v2, v0}, Lcom/narvii/account/LoginOrSignupFragment;->createRotationAnimator(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v35

    .line 697
    invoke-direct {v6, v2, v1}, Lcom/narvii/account/LoginOrSignupFragment;->createRotationAnimator(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v36

    .line 698
    invoke-direct {v6, v2, v0}, Lcom/narvii/account/LoginOrSignupFragment;->createRotationAnimator(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v37

    .line 699
    invoke-direct {v6, v2, v1}, Lcom/narvii/account/LoginOrSignupFragment;->createRotationAnimator(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v45

    .line 700
    invoke-direct {v6, v2, v0}, Lcom/narvii/account/LoginOrSignupFragment;->createRotationAnimator(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v46

    .line 701
    invoke-direct {v6, v2, v1}, Lcom/narvii/account/LoginOrSignupFragment;->createRotationAnimator(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v47

    .line 702
    invoke-direct {v6, v1, v0}, Lcom/narvii/account/LoginOrSignupFragment;->createRotationAnimator(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 704
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, v6, Lcom/narvii/account/LoginOrSignupFragment;->animatorSet:Landroid/animation/AnimatorSet;

    .line 705
    iget-object v0, v6, Lcom/narvii/account/LoginOrSignupFragment;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f933333    # 1.15f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f933333    # 1.15f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private varargs createInfiniteAnimator(Ljava/lang/Object;JLjava/lang/String;[F)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 329
    invoke-static {p1, p4, p5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const/4 p4, -0x1

    .line 330
    invoke-virtual {p1, p4}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 331
    new-instance p4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, p4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 332
    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method private createRotationAnimator(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;
    .locals 8

    .line 318
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    rem-int/lit8 v0, v0, 0x1e

    add-int/lit8 v0, v0, 0xa

    int-to-float v0, v0

    .line 319
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    rem-int/lit8 v1, v1, 0x64

    div-int/lit8 v1, v1, 0xa

    add-int/lit8 v1, v1, 0x1e

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v4, v1

    const/4 v1, 0x3

    new-array v7, v1, [F

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const/4 v3, 0x0

    aput v2, v7, v3

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    aput v3, v7, v2

    const/4 v2, 0x2

    if-eqz p2, :cond_2

    const/4 v0, 0x0

    :cond_2
    aput v0, v7, v2

    const-string v6, "rotation"

    move-object v2, p0

    move-object v3, p1

    .line 320
    invoke-direct/range {v2 .. v7}, Lcom/narvii/account/LoginOrSignupFragment;->createInfiniteAnimator(Ljava/lang/Object;JLjava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    return-object p1
.end method

.method public static getSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-nez p0, :cond_0

    goto :goto_1

    .line 726
    :cond_0
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v0, p1

    .line 727
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr p0, p2

    if-lt v0, p0, :cond_1

    goto :goto_0

    :cond_1
    move p0, v0

    :goto_0
    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method private requestMobileSignUpProvider()V
    .locals 4

    .line 152
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->https()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "auth/config-v2"

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    const-string v1, "api"

    .line 153
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 154
    new-instance v2, Lcom/narvii/account/LoginOrSignupFragment$2;

    const-class v3, Lcom/narvii/account/AuthConfigResponse;

    invoke-direct {v2, p0, v3}, Lcom/narvii/account/LoginOrSignupFragment$2;-><init>(Lcom/narvii/account/LoginOrSignupFragment;Ljava/lang/Class;)V

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private setUpLoginHint()V
    .locals 6

    const v0, 0x7f0f00fb

    .line 231
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0f0043

    .line 232
    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 233
    new-instance v2, Landroid/text/SpannableString;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 234
    new-instance v3, Lcom/narvii/account/LoginOrSignupFragment$3;

    invoke-direct {v3, p0}, Lcom/narvii/account/LoginOrSignupFragment$3;-><init>(Lcom/narvii/account/LoginOrSignupFragment;)V

    .line 239
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 240
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    const/4 v4, 0x1

    add-int/2addr v1, v4

    const/16 v5, 0x21

    .line 241
    invoke-virtual {v2, v3, v0, v1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 242
    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v2, v3, v0, v1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 243
    iget-object v0, p0, Lcom/narvii/account/LoginOrSignupFragment;->loginHint:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v0, p0, Lcom/narvii/account/LoginOrSignupFragment;->loginHint:Landroid/widget/TextView;

    invoke-static {}, Lcom/narvii/util/text/LinkTouchMovementMethod;->getInstance()Lcom/narvii/util/text/LinkTouchMovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 245
    iget-object v0, p0, Lcom/narvii/account/LoginOrSignupFragment;->loginHint:Landroid/widget/TextView;

    const v1, -0x33000001    # -1.3421772E8f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    return-void
.end method

.method private updateView()V
    .locals 8

    .line 337
    sget v0, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x65

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "community"

    const/16 v4, 0x8

    if-eqz v0, :cond_5

    .line 339
    iget-object v5, p0, Lcom/narvii/account/LoginOrSignupFragment;->accountTagline:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    .line 340
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 342
    :cond_1
    iget-object v5, p0, Lcom/narvii/account/LoginOrSignupFragment;->tvCommunityName:Landroid/widget/TextView;

    if-eqz v5, :cond_2

    .line 343
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 344
    new-instance v5, Lcom/narvii/util/PackageUtils;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 345
    iget-object v6, p0, Lcom/narvii/account/LoginOrSignupFragment;->tvCommunityName:Landroid/widget/TextView;

    invoke-static {v6}, Lcom/narvii/util/ViewUtils;->setMontserratExtraBoldTypeface(Landroid/widget/TextView;)V

    .line 346
    iget-object v6, p0, Lcom/narvii/account/LoginOrSignupFragment;->tvCommunityName:Landroid/widget/TextView;

    invoke-virtual {v5}, Lcom/narvii/util/PackageUtils;->getAppName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    :cond_2
    iget-object v5, p0, Lcom/narvii/account/LoginOrSignupFragment;->imgCommunityIcon:Lcom/narvii/widget/NVImageView;

    if-eqz v5, :cond_3

    .line 349
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 350
    iget-object v5, p0, Lcom/narvii/account/LoginOrSignupFragment;->imgCommunityIcon:Lcom/narvii/widget/NVImageView;

    const-string v6, "assets://icon-community.jpg"

    invoke-virtual {v5, v6}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 352
    :cond_3
    iget-object v5, p0, Lcom/narvii/account/LoginOrSignupFragment;->tvTagline:Landroid/widget/TextView;

    if-eqz v5, :cond_4

    .line 353
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 354
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/community/CommunityService;

    .line 355
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v6

    const-string v7, "config"

    invoke-virtual {v6, v7}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/narvii/config/ConfigService;

    .line 356
    iget-object v7, p0, Lcom/narvii/account/LoginOrSignupFragment;->tvTagline:Landroid/widget/TextView;

    invoke-virtual {v6}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object v5

    iget-object v5, v5, Lcom/narvii/model/Community;->tagline:Ljava/lang/String;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    :cond_4
    iget-object v5, p0, Lcom/narvii/account/LoginOrSignupFragment;->imgAminoLogo:Lcom/narvii/widget/TintButton;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08007f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 360
    :cond_5
    iget-object v5, p0, Lcom/narvii/account/LoginOrSignupFragment;->accountTagline:Landroid/widget/TextView;

    if-eqz v5, :cond_6

    .line 361
    invoke-static {v5}, Lcom/narvii/util/ViewUtils;->setMontserratExtraLightTypeface(Landroid/widget/TextView;)V

    .line 364
    :cond_6
    :goto_1
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/2addr v5, v1

    if-eqz v5, :cond_c

    if-nez v0, :cond_c

    .line 366
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v3, Lcom/narvii/model/Community;

    invoke-static {v0, v3}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Community;

    .line 367
    iget-object v3, p0, Lcom/narvii/account/LoginOrSignupFragment;->accountTagline:Landroid/widget/TextView;

    if-eqz v3, :cond_7

    .line 368
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 370
    :cond_7
    iget-object v3, p0, Lcom/narvii/account/LoginOrSignupFragment;->imgAminoLogo:Lcom/narvii/widget/TintButton;

    if-eqz v3, :cond_8

    .line 371
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f080061

    invoke-static {v5, v6}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 374
    :cond_8
    iget-object v3, p0, Lcom/narvii/account/LoginOrSignupFragment;->inviteCommunityContainer:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 375
    iget-object v3, p0, Lcom/narvii/account/LoginOrSignupFragment;->inviteCommunityIcon:Lcom/narvii/widget/NVImageView;

    iget-object v5, v0, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 376
    iget-object v3, p0, Lcom/narvii/account/LoginOrSignupFragment;->inviteCommunityName:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    iget-object v0, p0, Lcom/narvii/account/LoginOrSignupFragment;->tvCommunityName:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 379
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 381
    :cond_9
    iget-object v0, p0, Lcom/narvii/account/LoginOrSignupFragment;->imgCommunityIcon:Lcom/narvii/widget/NVImageView;

    if-eqz v0, :cond_a

    .line 382
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 384
    :cond_a
    iget-object v0, p0, Lcom/narvii/account/LoginOrSignupFragment;->tvTagline:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    .line 385
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_b
    const-string v0, "inviter"

    .line 387
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 388
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v3, Lcom/narvii/model/User;

    invoke-static {v0, v3}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/User;

    .line 389
    iget-object v3, p0, Lcom/narvii/account/LoginOrSignupFragment;->invitorName:Landroid/widget/TextView;

    if-eqz v3, :cond_c

    if-eqz v0, :cond_c

    const v5, 0x7f0f07bb

    new-array v1, v1, [Ljava/lang/Object;

    .line 390
    invoke-virtual {v0}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-virtual {p0, v5, v1}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    iget-object v0, p0, Lcom/narvii/account/LoginOrSignupFragment;->invitorName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_c
    return-void
.end method

.method private useSimpleForeground(Landroid/view/ViewGroup;)V
    .locals 3

    .line 249
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0493

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v0, 0x7f090541

    .line 250
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f080435

    .line 252
    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/narvii/account/LoginOrSignupFragment;->loadBitmap(Landroid/widget/ImageView;I)Landroid/graphics/Bitmap;

    .line 253
    iget-object v2, p0, Lcom/narvii/account/LoginOrSignupFragment;->bitmapMaps:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 259
    invoke-static {v0}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V

    .line 260
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 261
    iget-object p1, p0, Lcom/narvii/account/LoginOrSignupFragment;->bitmapMaps:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 262
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :catch_1
    :cond_0
    :goto_1
    return-void
.end method


# virtual methods
.method protected addStatusBarMargin()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public clearResponseWhenAccountChange()V
    .locals 0

    return-void
.end method

.method public completeLogEvent(Lcom/narvii/logging/LogEvent$Builder;)V
    .locals 2

    .line 733
    invoke-super {p0, p1}, Lcom/narvii/account/AccountBaseFragment;->completeLogEvent(Lcom/narvii/logging/LogEvent$Builder;)V

    const-string v0, "onBoarding"

    .line 734
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "coldStart"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    return-void
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "AuthHomePage"

    return-object v0
.end method

.method public loadBitmap(Landroid/widget/ImageView;I)Landroid/graphics/Bitmap;
    .locals 3

    .line 710
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 711
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 712
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 713
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/narvii/account/LoginOrSignupFragment;->getSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v1, 0x0

    .line 714
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 715
    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 716
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 717
    iget-object v0, p0, Lcom/narvii/account/LoginOrSignupFragment;->viewList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 718
    iget-object v0, p0, Lcom/narvii/account/LoginOrSignupFragment;->bitmapMaps:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 1

    .line 588
    iget-object p1, p0, Lcom/narvii/account/LoginOrSignupFragment;->backButton:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 591
    :cond_0
    sget-object p1, Lcom/narvii/logging/ActSemantic;->cancelAuth:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "EngagementArea"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    const/4 p1, 0x0

    return p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 407
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x7f090a47

    if-ne v0, v2, :cond_1

    .line 408
    sget-object v0, Lcom/narvii/logging/ActSemantic;->signup:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v2, "EngagementArea"

    invoke-virtual {v0, v2}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 409
    new-instance v0, Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x4

    new-array v2, v2, [I

    .line 412
    sget-boolean v3, Lcom/narvii/account/LoginOrSignupFragment;->showPhoneNumberItem:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    const v3, 0x7f0f0fed

    .line 413
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setTitle(I)V

    const v3, 0x7f0f0051

    .line 414
    invoke-virtual {v0, v3, v4}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    aput v3, v2, v4

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const v5, 0x7f0f0035

    .line 419
    invoke-virtual {v0, v5, v4}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    add-int/lit8 v6, v3, 0x1

    .line 420
    aput v5, v2, v3

    const v5, 0x7f0f003d

    .line 425
    new-instance v3, Lcom/narvii/account/LoginOrSignupFragment$4;

    invoke-direct {v3, p0, v2}, Lcom/narvii/account/LoginOrSignupFragment$4;-><init>(Lcom/narvii/account/LoginOrSignupFragment;[I)V

    invoke-virtual {v0, v3}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 471
    new-instance v2, Lcom/narvii/account/LoginOrSignupFragment$5;

    invoke-direct {v2, p0}, Lcom/narvii/account/LoginOrSignupFragment$5;-><init>(Lcom/narvii/account/LoginOrSignupFragment;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 477
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    .line 479
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v2, 0x7f0906a2

    if-eq v0, v2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v2, 0x7f0906a3

    if-ne v0, v2, :cond_3

    .line 480
    :cond_2
    invoke-direct {p0}, Lcom/narvii/account/LoginOrSignupFragment;->clickLogin()V

    .line 482
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v2, 0x7f090048

    if-ne v0, v2, :cond_4

    .line 483
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 485
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090a8f

    if-ne p1, v0, :cond_6

    .line 486
    iget-boolean p1, p0, Lcom/narvii/account/LoginOrSignupFragment;->eventProfileGot:Z

    if-eqz p1, :cond_5

    .line 487
    invoke-direct {p0}, Lcom/narvii/account/LoginOrSignupFragment;->clickStartButton()V

    goto :goto_1

    .line 489
    :cond_5
    iput-boolean v1, p0, Lcom/narvii/account/LoginOrSignupFragment;->pendingStart:Z

    .line 490
    new-instance p1, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 491
    new-instance v0, Lcom/narvii/account/LoginOrSignupFragment$6;

    invoke-direct {v0, p0}, Lcom/narvii/account/LoginOrSignupFragment$6;-><init>(Lcom/narvii/account/LoginOrSignupFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 497
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    :cond_6
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 126
    invoke-super {p0, p1}, Lcom/narvii/account/AccountBaseFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "prefs"

    .line 127
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/narvii/account/LoginOrSignupFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v0, "eventLogProfile"

    .line 128
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/services/EventLogProfileService;

    iput-object v0, p0, Lcom/narvii/account/LoginOrSignupFragment;->eventLogProfileService:Lcom/narvii/services/EventLogProfileService;

    const/4 v0, 0x1

    .line 129
    sput-boolean v0, Lcom/narvii/account/LoginOrSignupFragment;->showPhoneNumberItem:Z

    .line 130
    invoke-direct {p0}, Lcom/narvii/account/LoginOrSignupFragment;->requestMobileSignUpProvider()V

    .line 132
    iget-object v1, p0, Lcom/narvii/account/LoginOrSignupFragment;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.narvii.action.ACTION_MOBILE_REGISTER_SWITCH_LOGIN"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 133
    iget-object v1, p0, Lcom/narvii/account/LoginOrSignupFragment;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.narvii.action.ACTION_MOBILE_REGISTER_SWITCH_RESTORE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    const-string v1, "onBoarding"

    .line 135
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/SharedPreferences;

    const-string v1, "signUpStrategy"

    .line 137
    invoke-interface {p1, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 138
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const/4 v2, 0x2

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 142
    :cond_0
    iget-object p1, p0, Lcom/narvii/account/LoginOrSignupFragment;->eventLogProfileService:Lcom/narvii/services/EventLogProfileService;

    invoke-virtual {p1}, Lcom/narvii/services/EventLogProfileService;->getResponse()Lcom/narvii/logging/EventLogProfileResponse;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/narvii/account/LoginOrSignupFragment;->eventLogProfileService:Lcom/narvii/services/EventLogProfileService;

    invoke-virtual {p1}, Lcom/narvii/services/EventLogProfileService;->getError()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 145
    :cond_1
    iget-object p1, p0, Lcom/narvii/account/LoginOrSignupFragment;->eventLogProfileService:Lcom/narvii/services/EventLogProfileService;

    invoke-virtual {p1}, Lcom/narvii/services/EventLogProfileService;->refreshIfIdle()V

    .line 146
    iget-object p1, p0, Lcom/narvii/account/LoginOrSignupFragment;->eventLogProfileService:Lcom/narvii/services/EventLogProfileService;

    invoke-virtual {p1, p0}, Lcom/narvii/services/EventLogProfileService;->addListener(Lcom/narvii/services/EventLogProfileService$EventLogProfileListener;)V

    goto :goto_1

    .line 143
    :cond_2
    :goto_0
    iput-boolean v0, p0, Lcom/narvii/account/LoginOrSignupFragment;->eventProfileGot:Z

    :goto_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 175
    sget p3, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v0, 0x65

    if-ne p3, v0, :cond_0

    const p3, 0x7f0b0022

    goto :goto_0

    :cond_0
    const p3, 0x7f0b0021

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 576
    iget-object v0, p0, Lcom/narvii/account/LoginOrSignupFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 577
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/narvii/account/LoginOrSignupFragment;->viewList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 302
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/narvii/account/LoginOrSignupFragment;->bitmapMaps:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 305
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/narvii/account/LoginOrSignupFragment;->animatorContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 308
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 310
    :cond_2
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroyView()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/narvii/account/LoginOrSignupFragment;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 296
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onPause()V

    return-void
.end method

.method public onProfileChanged(Lcom/narvii/logging/EventLogProfileResponse;Z)V
    .locals 0

    .line 739
    iget-object p1, p0, Lcom/narvii/account/LoginOrSignupFragment;->eventLogProfileService:Lcom/narvii/services/EventLogProfileService;

    invoke-virtual {p1, p0}, Lcom/narvii/services/EventLogProfileService;->removeListener(Lcom/narvii/services/EventLogProfileService$EventLogProfileListener;)V

    const/4 p1, 0x1

    .line 740
    iput-boolean p1, p0, Lcom/narvii/account/LoginOrSignupFragment;->eventProfileGot:Z

    .line 741
    iget-boolean p1, p0, Lcom/narvii/account/LoginOrSignupFragment;->pendingStart:Z

    if-eqz p1, :cond_0

    .line 742
    new-instance p1, Lcom/narvii/account/LoginOrSignupFragment$9;

    invoke-direct {p1, p0}, Lcom/narvii/account/LoginOrSignupFragment$9;-><init>(Lcom/narvii/account/LoginOrSignupFragment;)V

    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onRequestFailed(Ljava/lang/String;Z)V
    .locals 0

    .line 753
    iget-object p1, p0, Lcom/narvii/account/LoginOrSignupFragment;->eventLogProfileService:Lcom/narvii/services/EventLogProfileService;

    invoke-virtual {p1, p0}, Lcom/narvii/services/EventLogProfileService;->removeListener(Lcom/narvii/services/EventLogProfileService$EventLogProfileListener;)V

    const/4 p1, 0x1

    .line 754
    iput-boolean p1, p0, Lcom/narvii/account/LoginOrSignupFragment;->eventProfileGot:Z

    .line 755
    iget-boolean p1, p0, Lcom/narvii/account/LoginOrSignupFragment;->pendingStart:Z

    if-eqz p1, :cond_0

    .line 756
    new-instance p1, Lcom/narvii/account/LoginOrSignupFragment$10;

    invoke-direct {p1, p0}, Lcom/narvii/account/LoginOrSignupFragment$10;-><init>(Lcom/narvii/account/LoginOrSignupFragment;)V

    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 284
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onResume()V

    .line 285
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/content/Context;)V

    .line 286
    iget-object v0, p0, Lcom/narvii/account/LoginOrSignupFragment;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 185
    invoke-super {p0, p1, p2}, Lcom/narvii/account/AccountBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0906a2

    .line 186
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/narvii/account/LoginOrSignupFragment;->loginButton:Landroid/widget/Button;

    .line 187
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090a47

    .line 188
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/narvii/account/LoginOrSignupFragment;->signupButton:Landroid/widget/Button;

    .line 189
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090048

    .line 190
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090a8f

    .line 191
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/narvii/account/LoginOrSignupFragment;->startButton:Landroid/widget/Button;

    .line 192
    iget-object v0, p0, Lcom/narvii/account/LoginOrSignupFragment;->startButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x7f0906a3

    .line 195
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/account/LoginOrSignupFragment;->loginHint:Landroid/widget/TextView;

    .line 196
    iget-object v0, p0, Lcom/narvii/account/LoginOrSignupFragment;->loginHint:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 197
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    invoke-direct {p0}, Lcom/narvii/account/LoginOrSignupFragment;->setUpLoginHint()V

    .line 200
    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/account/LoginOrSignupFragment;->backButton:Landroid/view/View;

    .line 202
    const p2, 0x7f0902b6

    .line 204
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/narvii/account/LoginOrSignupFragment;->tvCommunityName:Landroid/widget/TextView;

    const p2, 0x7f0902a3

    .line 205
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/NVImageView;

    iput-object p2, p0, Lcom/narvii/account/LoginOrSignupFragment;->imgCommunityIcon:Lcom/narvii/widget/NVImageView;

    const p2, 0x7f0900a1

    .line 206
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/TintButton;

    iput-object p2, p0, Lcom/narvii/account/LoginOrSignupFragment;->imgAminoLogo:Lcom/narvii/widget/TintButton;

    const p2, 0x7f0902c4

    .line 207
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/narvii/account/LoginOrSignupFragment;->tvTagline:Landroid/widget/TextView;

    const p2, 0x7f090029

    .line 208
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/narvii/account/LoginOrSignupFragment;->accountTagline:Landroid/widget/TextView;

    const p2, 0x7f0902ae

    .line 210
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/account/LoginOrSignupFragment;->inviteCommunityContainer:Landroid/view/View;

    const p2, 0x7f0902a4

    .line 211
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/NVImageView;

    iput-object p2, p0, Lcom/narvii/account/LoginOrSignupFragment;->inviteCommunityIcon:Lcom/narvii/widget/NVImageView;

    const p2, 0x7f0905ce

    .line 212
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/narvii/account/LoginOrSignupFragment;->invitorName:Landroid/widget/TextView;

    const p2, 0x7f0902b7

    .line 213
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/narvii/account/LoginOrSignupFragment;->inviteCommunityName:Landroid/widget/TextView;

    .line 215
    invoke-direct {p0}, Lcom/narvii/account/LoginOrSignupFragment;->updateView()V

    .line 217
    sget p2, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v0, 0x64

    if-ne p2, v0, :cond_2

    const p2, 0x7f0900a8

    .line 218
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/narvii/account/LoginOrSignupFragment;->animatorContainer:Landroid/view/ViewGroup;

    .line 219
    iget-object p1, p0, Lcom/narvii/account/LoginOrSignupFragment;->animatorContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 220
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/account/LoginOrSignupFragment;->viewList:Ljava/util/List;

    .line 221
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/narvii/account/LoginOrSignupFragment;->bitmapMaps:Ljava/util/HashMap;

    :cond_2
    return-void
.end method

.method protected useComplexAnimation(Landroid/view/ViewGroup;)V
    .locals 3

    .line 268
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0492

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 270
    :try_start_0
    invoke-direct {p0, p1}, Lcom/narvii/account/LoginOrSignupFragment;->createAnimation(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 273
    invoke-static {v0}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V

    .line 274
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 275
    iget-object v0, p0, Lcom/narvii/account/LoginOrSignupFragment;->bitmapMaps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 276
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 278
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/account/LoginOrSignupFragment;->useSimpleForeground(Landroid/view/ViewGroup;)V

    :catch_1
    :goto_1
    return-void
.end method
