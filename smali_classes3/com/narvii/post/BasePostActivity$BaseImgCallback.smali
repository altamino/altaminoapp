.class public Lcom/narvii/post/BasePostActivity$BaseImgCallback;
.super Ljava/lang/Object;
.source "BasePostActivity.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/post/BasePostActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseImgCallback"
.end annotation


# instance fields
.field private bold:Z

.field private center:Z

.field protected final editText:Lcom/narvii/widget/EditTextIMG;

.field private italic:Z

.field private paraMarkEnd:I

.field private paraStart:I

.field private strikethrough:Z

.field private underline:Z


# direct methods
.method public constructor <init>(Lcom/narvii/widget/EditTextIMG;)V
    .locals 0

    .line 562
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 563
    iput-object p1, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->editText:Lcom/narvii/widget/EditTextIMG;

    return-void
.end method

.method private build(ZZZZZ)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    if-nez p3, :cond_1

    if-nez p4, :cond_1

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    return-object p1

    .line 643
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    .line 644
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    const/16 p1, 0x42

    .line 646
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    if-eqz p2, :cond_3

    const/16 p1, 0x49

    .line 649
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    if-eqz p3, :cond_4

    const/16 p1, 0x43

    .line 652
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    if-eqz p4, :cond_5

    const/16 p1, 0x55

    .line 655
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    if-eqz p5, :cond_6

    const/16 p1, 0x53

    .line 658
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    const/16 p1, 0x5d

    .line 660
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 661
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private search()Landroid/text/Editable;
    .locals 7

    const/4 v0, -0x1

    .line 567
    iput v0, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->paraStart:I

    .line 568
    iput v0, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->paraMarkEnd:I

    const/4 v1, 0x0

    .line 569
    iput-boolean v1, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->bold:Z

    .line 570
    iput-boolean v1, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->italic:Z

    .line 571
    iput-boolean v1, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->center:Z

    .line 572
    iput-boolean v1, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->underline:Z

    .line 573
    iput-boolean v1, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->strikethrough:Z

    .line 575
    iget-object v2, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->editText:Lcom/narvii/widget/EditTextIMG;

    invoke-virtual {v2}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    .line 576
    iget-object v3, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->editText:Lcom/narvii/widget/EditTextIMG;

    invoke-virtual {v3}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v3

    :goto_0
    if-lez v3, :cond_1

    add-int/lit8 v4, v3, -0x1

    .line 578
    invoke-interface {v2, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_1

    const/16 v5, 0xd

    if-ne v4, v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ltz v3, :cond_8

    .line 585
    iput v3, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->paraStart:I

    .line 586
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 587
    invoke-static {}, Lcom/narvii/post/BasePostActivity;->access$000()Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 588
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->start(I)I

    move-result v6

    if-nez v6, :cond_7

    .line 589
    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->end(I)I

    move-result v6

    add-int/2addr v3, v6

    iput v3, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->paraMarkEnd:I

    .line 590
    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x42

    .line 591
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-eq v4, v0, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    iput-boolean v4, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->bold:Z

    const/16 v4, 0x49

    .line 592
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-eq v4, v0, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    iput-boolean v4, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->italic:Z

    const/16 v4, 0x43

    .line 593
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-eq v4, v0, :cond_4

    const/4 v4, 0x1

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    :goto_4
    iput-boolean v4, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->center:Z

    const/16 v4, 0x55

    .line 594
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-eq v4, v0, :cond_5

    const/4 v4, 0x1

    goto :goto_5

    :cond_5
    const/4 v4, 0x0

    :goto_5
    iput-boolean v4, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->underline:Z

    const/16 v4, 0x53

    .line 595
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v0, :cond_6

    const/4 v1, 0x1

    :cond_6
    iput-boolean v1, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->strikethrough:Z

    goto :goto_6

    .line 597
    :cond_7
    iput v3, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->paraMarkEnd:I

    :goto_6
    return-object v2

    :cond_8
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 10

    .line 670
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    sget v0, Lcom/narvii/lib/R$string;->post_text_bold:I

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    sget v0, Lcom/narvii/lib/R$string;->post_text_italic:I

    if-eq p1, v0, :cond_1

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    sget v0, Lcom/narvii/lib/R$string;->post_text_center:I

    if-eq p1, v0, :cond_1

    .line 671
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    sget v0, Lcom/narvii/lib/R$string;->post_text_underline:I

    if-eq p1, v0, :cond_1

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    sget v0, Lcom/narvii/lib/R$string;->post_text_strikethrough:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    .line 672
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->search()Landroid/text/Editable;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_9

    .line 673
    iget v2, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->paraStart:I

    if-ltz v2, :cond_9

    .line 674
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sget v3, Lcom/narvii/lib/R$string;->post_text_bold:I

    if-ne v2, v3, :cond_2

    .line 675
    iget-boolean p2, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->bold:Z

    xor-int/lit8 v3, p2, 0x1

    iget-boolean v4, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->italic:Z

    iget-boolean v5, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->center:Z

    iget-boolean v6, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->underline:Z

    iget-boolean v7, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->strikethrough:Z

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->build(ZZZZZ)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_1

    .line 676
    :cond_2
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sget v3, Lcom/narvii/lib/R$string;->post_text_italic:I

    if-ne v2, v3, :cond_3

    .line 677
    iget-boolean v5, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->bold:Z

    iget-boolean p2, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->italic:Z

    xor-int/lit8 v6, p2, 0x1

    iget-boolean v7, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->center:Z

    iget-boolean v8, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->underline:Z

    iget-boolean v9, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->strikethrough:Z

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->build(ZZZZZ)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 678
    :cond_3
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sget v3, Lcom/narvii/lib/R$string;->post_text_center:I

    if-ne v2, v3, :cond_4

    .line 679
    iget-boolean v5, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->bold:Z

    iget-boolean v6, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->italic:Z

    iget-boolean p2, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->center:Z

    xor-int/lit8 v7, p2, 0x1

    iget-boolean v8, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->underline:Z

    iget-boolean v9, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->strikethrough:Z

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->build(ZZZZZ)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 680
    :cond_4
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sget v3, Lcom/narvii/lib/R$string;->post_text_underline:I

    if-ne v2, v3, :cond_5

    .line 681
    iget-boolean v5, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->bold:Z

    iget-boolean v6, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->italic:Z

    iget-boolean v7, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->center:Z

    iget-boolean p2, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->underline:Z

    xor-int/lit8 v8, p2, 0x1

    iget-boolean v9, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->strikethrough:Z

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->build(ZZZZZ)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 682
    :cond_5
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    sget v2, Lcom/narvii/lib/R$string;->post_text_strikethrough:I

    if-ne p2, v2, :cond_6

    .line 683
    iget-boolean v4, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->bold:Z

    iget-boolean v5, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->italic:Z

    iget-boolean v6, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->center:Z

    iget-boolean v7, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->underline:Z

    iget-boolean p2, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->strikethrough:Z

    xor-int/lit8 v8, p2, 0x1

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->build(ZZZZZ)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_6
    const/4 p2, 0x0

    .line 685
    :goto_1
    iget-object v2, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->editText:Lcom/narvii/widget/EditTextIMG;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v2

    iget-object v3, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->editText:Lcom/narvii/widget/EditTextIMG;

    invoke-virtual {v3}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v3

    .line 686
    iget v4, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->paraStart:I

    iget v5, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->paraMarkEnd:I

    invoke-interface {p1, v4, v5, p2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 687
    iget p1, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->paraStart:I

    iget v4, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->paraMarkEnd:I

    sub-int/2addr p1, v4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p1, p2

    add-int p2, v2, p1

    add-int/2addr p1, v3

    .line 691
    :try_start_0
    iget-object v2, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->editText:Lcom/narvii/widget/EditTextIMG;

    if-gez p2, :cond_7

    const/4 p2, 0x0

    :cond_7
    if-gez p1, :cond_8

    const/4 p1, 0x0

    :cond_8
    invoke-virtual {v2, p2, p1}, Landroid/widget/EditText;->setSelection(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_9
    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 7

    .line 606
    iget-object p1, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->editText:Lcom/narvii/widget/EditTextIMG;

    invoke-virtual {p1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 607
    sget v0, Lcom/narvii/lib/R$string;->post_text_bold:I

    const/4 v1, 0x0

    invoke-interface {p2, v1, v0, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v2, Lcom/narvii/util/ActionBarIcon;

    sget v3, Lcom/narvii/lib/R$string;->fa_bold:I

    .line 608
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x3f19999a    # 0.6f

    invoke-direct {v2, p1, v3, v4, v1}, Lcom/narvii/util/ActionBarIcon;-><init>(Landroid/content/Context;Ljava/lang/String;FI)V

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v2, 0x2

    .line 609
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 610
    sget v0, Lcom/narvii/lib/R$string;->post_text_italic:I

    invoke-interface {p2, v1, v0, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v3, Lcom/narvii/util/ActionBarIcon;

    sget v5, Lcom/narvii/lib/R$string;->fa_italic:I

    .line 611
    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p1, v5, v4, v1}, Lcom/narvii/util/ActionBarIcon;-><init>(Landroid/content/Context;Ljava/lang/String;FI)V

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v0

    .line 612
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 613
    sget v0, Lcom/narvii/lib/R$string;->post_text_center:I

    invoke-interface {p2, v1, v0, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v3, Lcom/narvii/util/ActionBarIcon;

    sget v5, Lcom/narvii/lib/R$string;->fa_align_center:I

    .line 614
    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x3f23d70a    # 0.64f

    invoke-direct {v3, p1, v5, v6, v1}, Lcom/narvii/util/ActionBarIcon;-><init>(Landroid/content/Context;Ljava/lang/String;FI)V

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v0

    .line 615
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 616
    sget v0, Lcom/narvii/lib/R$string;->post_text_underline:I

    invoke-interface {p2, v1, v0, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v2, Lcom/narvii/util/ActionBarIcon;

    sget v3, Lcom/narvii/lib/R$string;->fa_underline:I

    .line 617
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3, v4, v1}, Lcom/narvii/util/ActionBarIcon;-><init>(Landroid/content/Context;Ljava/lang/String;FI)V

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v2, 0x1

    .line 618
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 619
    sget v0, Lcom/narvii/lib/R$string;->post_text_strikethrough:I

    invoke-interface {p2, v1, v0, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p2

    new-instance v0, Lcom/narvii/util/ActionBarIcon;

    sget v3, Lcom/narvii/lib/R$string;->fa_strikethrough:I

    .line 620
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p1, v3, v4, v1}, Lcom/narvii/util/ActionBarIcon;-><init>(Landroid/content/Context;Ljava/lang/String;FI)V

    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object p1

    .line 621
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return v2
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 0

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3

    .line 627
    invoke-direct {p0}, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->search()Landroid/text/Editable;

    .line 628
    sget p1, Lcom/narvii/lib/R$string;->post_text_bold:I

    invoke-interface {p2, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iget v0, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->paraStart:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object p1

    iget-boolean v0, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->bold:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/narvii/lib/R$string;->post_text_unbold:I

    goto :goto_1

    :cond_1
    sget v0, Lcom/narvii/lib/R$string;->post_text_bold:I

    .line 629
    :goto_1
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 630
    sget p1, Lcom/narvii/lib/R$string;->post_text_italic:I

    invoke-interface {p2, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iget v0, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->paraStart:I

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object p1

    iget-boolean v0, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->italic:Z

    if-eqz v0, :cond_3

    sget v0, Lcom/narvii/lib/R$string;->post_text_unitalic:I

    goto :goto_3

    :cond_3
    sget v0, Lcom/narvii/lib/R$string;->post_text_italic:I

    .line 631
    :goto_3
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 632
    sget p1, Lcom/narvii/lib/R$string;->post_text_center:I

    invoke-interface {p2, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iget v0, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->paraStart:I

    if-ltz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object p1

    iget-boolean v0, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->center:Z

    if-eqz v0, :cond_5

    sget v0, Lcom/narvii/lib/R$string;->post_text_uncenter:I

    goto :goto_5

    :cond_5
    sget v0, Lcom/narvii/lib/R$string;->post_text_center:I

    .line 633
    :goto_5
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 634
    sget p1, Lcom/narvii/lib/R$string;->post_text_underline:I

    invoke-interface {p2, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iget v0, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->paraStart:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_6

    :cond_6
    const/4 v0, 0x0

    :goto_6
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object p1

    iget-boolean v0, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->underline:Z

    if-eqz v0, :cond_7

    sget v0, Lcom/narvii/lib/R$string;->post_text_ununderline:I

    goto :goto_7

    :cond_7
    sget v0, Lcom/narvii/lib/R$string;->post_text_underline:I

    .line 635
    :goto_7
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 636
    sget p1, Lcom/narvii/lib/R$string;->post_text_strikethrough:I

    invoke-interface {p2, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iget p2, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->paraStart:I

    if-ltz p2, :cond_8

    const/4 v1, 0x1

    :cond_8
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object p1

    iget-boolean p2, p0, Lcom/narvii/post/BasePostActivity$BaseImgCallback;->strikethrough:Z

    if-eqz p2, :cond_9

    sget p2, Lcom/narvii/lib/R$string;->post_text_unstrikethrough:I

    goto :goto_8

    :cond_9
    sget p2, Lcom/narvii/lib/R$string;->post_text_strikethrough:I

    .line 637
    :goto_8
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    return v2
.end method
