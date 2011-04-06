# See bottom of file for license and copyright information

package Foswiki::Contrib::JQPrettyPhotoContrib::Core;
use strict;
use warnings;

use Foswiki::Plugins::JQueryPlugin::Plugin ();
our @ISA = qw( Foswiki::Plugins::JQueryPlugin::Plugin );

=begin TML

---+ package Foswiki::Contrib::JQPrettyPhotoContrib::Core

This is the perl stub for the prettyPhoto plugin.

=cut

=begin TML

---++ ClassMethod new( $class, $session, ... )

Constructor

=cut

sub new {
  my $class = shift;
  my $session = shift || $Foswiki::Plugins::SESSION;

  my $this = bless(
    $class->SUPER::new(
      $session,
      name => 'PrettyPhoto',
      version => '3.0',
      author => 'Stephane Caron',
      homepage => 'http://www.no-margin-for-errors.com/projects/prettyphoto-jquery-lightbox-clone/',
      css => ['jquery.prettyPhoto.css'],
      javascript => ['jquery.prettyPhoto.js', 'jquery.prettyPhoto.init.js'],
      puburl => '%PUBURLPATH%/%SYSTEMWEB%/JQPrettyPhotoContrib',
    ),
    $class
  );

  return $this;
}

1;

__END__
Foswiki - The Free and Open Source Wiki, http://foswiki.org/

Copyright (C) 2011 Michael Daum http://michaeldaumconsulting.com

This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; either version 2
of the License, or (at your option) any later version. For
more details read LICENSE in the root of this distribution.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

As per the GPL, removal of this notice is prohibited.

